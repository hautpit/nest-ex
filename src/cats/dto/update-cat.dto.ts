import { CreateCatDto } from './create-cat.dto';

export class UpdateCatDto extends CreateCatDto {
  readonly id: string;
}
