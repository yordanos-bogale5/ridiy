const { ApolloClient, InMemoryCache, gql, createHttpLink } = require('@apollo/client/core');
const fetch = require('cross-fetch');

// Create Apollo Client
const httpLink = createHttpLink({
  uri: 'http://localhost:3000/graphql',
  fetch: fetch
});

const client = new ApolloClient({
  link: httpLink,
  cache: new InMemoryCache()
});

// Query to get all services
const GET_SERVICES = gql`
  query GetAllServices {
    serviceCategories {
      id
      name
      services {
        id
        name
        description
        baseFare
        minimumFee
        paymentMethod
        personCapacity
      }
    }
  }
`;

// Alternative query to get services directly
const GET_SERVICES_DIRECT = gql`
  query GetServicesDirectly {
    services {
      nodes {
        id
        name
        description
        baseFare
        minimumFee
        paymentMethod
        personCapacity
        categoryId
      }
    }
  }
`;

async function checkServices() {
  try {
    console.log('🔍 Checking available services in database...\n');
    
    // Try the first query (with categories)
    try {
      console.log('📋 Trying to get services via categories...');
      const result1 = await client.query({ query: GET_SERVICES });
      
      if (result1.data?.serviceCategories) {
        console.log('✅ Found service categories:', result1.data.serviceCategories.length);
        
        result1.data.serviceCategories.forEach((category, catIndex) => {
          console.log(`\n📁 Category ${catIndex + 1}: "${category.name}" (ID: ${category.id})`);
          
          if (category.services && category.services.length > 0) {
            console.log(`   📦 Services in this category: ${category.services.length}`);
            category.services.forEach((service, serviceIndex) => {
              console.log(`   ${serviceIndex + 1}. Service ID: ${service.id}`);
              console.log(`      Name: ${service.name}`);
              console.log(`      Base Fare: $${service.baseFare}`);
              console.log(`      Min Fee: $${service.minimumFee}`);
              console.log(`      Payment: ${service.paymentMethod}`);
              console.log(`      Capacity: ${service.personCapacity} people`);
              console.log('');
            });
          } else {
            console.log('   ❌ No services in this category');
          }
        });
        
        // Extract all service IDs
        const allServices = result1.data.serviceCategories.flatMap(cat => cat.services || []);
        if (allServices.length > 0) {
          console.log('🎯 AVAILABLE SERVICE IDs TO USE:');
          allServices.forEach(service => {
            console.log(`   - ID: ${service.id} (${service.name})`);
          });
          return allServices;
        }
      }
    } catch (error1) {
      console.log('❌ Categories query failed:', error1.message);
    }
    
    // Try the second query (direct services)
    try {
      console.log('\n📋 Trying to get services directly...');
      const result2 = await client.query({ query: GET_SERVICES_DIRECT });
      
      if (result2.data?.services?.nodes) {
        console.log('✅ Found services directly:', result2.data.services.nodes.length);
        
        result2.data.services.nodes.forEach((service, index) => {
          console.log(`\n📦 Service ${index + 1}:`);
          console.log(`   ID: ${service.id}`);
          console.log(`   Name: ${service.name}`);
          console.log(`   Category ID: ${service.categoryId}`);
          console.log(`   Base Fare: $${service.baseFare}`);
          console.log(`   Min Fee: $${service.minimumFee}`);
          console.log(`   Payment: ${service.paymentMethod}`);
          console.log(`   Capacity: ${service.personCapacity} people`);
        });
        
        if (result2.data.services.nodes.length > 0) {
          console.log('\n🎯 AVAILABLE SERVICE IDs TO USE:');
          result2.data.services.nodes.forEach(service => {
            console.log(`   - ID: ${service.id} (${service.name})`);
          });
          return result2.data.services.nodes;
        }
      }
    } catch (error2) {
      console.log('❌ Direct services query failed:', error2.message);
    }
    
    console.log('\n❌ No services found in database');
    console.log('💡 You may need to create services first');
    return [];
    
  } catch (error) {
    console.error('❌ Error checking services:', error.message);
    console.log('\n💡 Make sure the admin API is running on http://localhost:3000');
    return [];
  }
}

// Run the check
checkServices().then((services) => {
  if (services.length === 0) {
    console.log('\n🔧 RECOMMENDATION:');
    console.log('   1. Create services via the admin panel management section');
    console.log('   2. Or use the "Create Service" button in the dispatcher');
    console.log('   3. Or manually insert services into the database');
  } else {
    console.log('\n✅ SUCCESS: Use these service IDs in your dispatcher');
  }
  process.exit(0);
}).catch(error => {
  console.error('Fatal error:', error);
  process.exit(1);
});
