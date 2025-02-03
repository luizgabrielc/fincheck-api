/*
  Warnings:

  - Added the required column `color` to the `users` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "BankAccountType" AS ENUM ('CHECKING', 'INVESTMENT', 'CASH');

-- AlterTable
ALTER TABLE "users" ADD COLUMN     "color" TEXT NOT NULL;

-- CreateTable
CREATE TABLE "bank_accounts" (
    "id" UUID NOT NULL,
    "userId" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "initial_balance" DOUBLE PRECISION NOT NULL,
    "type" "BankAccountType" NOT NULL,

    CONSTRAINT "bank_accounts_pkey" PRIMARY KEY ("id")
);