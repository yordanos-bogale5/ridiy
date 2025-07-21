import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot, UrlTree, Router } from '@angular/router';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class LoginGuard  {
  constructor(private router: Router) {

  }
  canActivate(
    next: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): Observable<boolean | UrlTree> | Promise<boolean | UrlTree> | boolean | UrlTree {
      const token = localStorage.getItem('ridy_admin_token');
      if(token != null) {
        return true;
      } else {
        // Temporarily bypass login for demo purposes
        console.log('Bypassing login guard for demo');
        return true;
        // this.router.navigate(['login'], {});
        // return false;
      }
  }
  
}
