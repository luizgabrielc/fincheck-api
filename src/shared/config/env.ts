import { plainToInstance } from 'class-transformer';
import { IsEmpty, IsString, NotEquals, validateSync } from 'class-validator';

class Env {
  @IsString()
  @IsEmpty()
  @NotEquals('unsecure_jwt_secret')
  jwtSecret: string;
}

export const env: Env = plainToInstance(Env, {
  jwtSecret: process.env.JWT_SECRET,
});

const errors = validateSync(env);

console.log("errors: ", errors);

if(errors.length > 0){
    throw new Error(JSON.stringify(errors, null, 2))
}
