-- CreateTable
CREATE TABLE "User" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL,
  "email" TEXT,
  "phone" TEXT,
  "apt" TEXT NOT NULL,
  "role" TEXT NOT NULL DEFAULT 'RESIDENT',
  "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "Area" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" TEXT NOT NULL,
  "description" TEXT,
  "openHour" INTEGER NOT NULL,
  "closeHour" INTEGER NOT NULL,
  "slotMinutes" INTEGER NOT NULL,
  "maxAdvanceDays" INTEGER NOT NULL,
  "maxDurationMins" INTEGER NOT NULL,
  "active" BOOLEAN NOT NULL DEFAULT 1
);

-- CreateTable
CREATE TABLE "Reservation" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "areaId" INTEGER NOT NULL,
  "userId" INTEGER,
  "requesterName" TEXT NOT NULL,
  "apt" TEXT NOT NULL,
  "phone" TEXT NOT NULL,
  "startAt" DATETIME NOT NULL,
  "endAt" DATETIME NOT NULL,
  "status" TEXT NOT NULL DEFAULT 'PENDING',
  "purpose" TEXT,
  "notes" TEXT,
  "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "updatedAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY ("areaId") REFERENCES "Area" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
  FOREIGN KEY ("userId") REFERENCES "User" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

-- CreateIndex
CREATE INDEX "Reservation_areaId_idx" ON "Reservation"("areaId");

-- CreateIndex
CREATE INDEX "Reservation_userId_idx" ON "Reservation"("userId");
