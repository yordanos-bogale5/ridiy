import {
  ExecutionContext,
  Injectable,
  UnauthorizedException,
} from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';

@Injectable()
export class RestJwtAuthGuard extends AuthGuard('jwt') {
  override canActivate(context: ExecutionContext) {
    return super.canActivate(context);
  }

  override handleRequest(err: any, user: any) {
    if (err || !user) {
      throw err || new UnauthorizedException('REST API Auth blocked reqeust.');
    }
    return user;
  }
}
