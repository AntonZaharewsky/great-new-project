import {Entity, Column, PrimaryGeneratedColumn, BeforeInsert, ObjectIdColumn} from 'typeorm';
import * as crypto from 'crypto';

@Entity()
export class User {
    @ObjectIdColumn()
    id: number;

    @Column()
    name: string;

    @Column({default: ''})
    avatar: string;

    @Column()
    email: string;

    @BeforeInsert()
    hashPassword() {
        this.password = crypto.createHmac('sha256', this.password).digest('hex');
    }
    @Column()
    password: string;
}