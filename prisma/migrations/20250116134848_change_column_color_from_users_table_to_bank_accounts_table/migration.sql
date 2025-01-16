/*
  Warnings:

  - You are about to drop the column `color` on the `users` table. All the data in the column will be lost.
  - Added the required column `color` to the `bank_accounts` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "bank_accounts" ADD COLUMN     "color" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "users" DROP COLUMN "color";
