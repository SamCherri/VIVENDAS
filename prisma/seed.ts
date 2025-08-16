import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  await prisma.area.createMany({
    data: [
      {
        name: 'Salão de Festas',
        openHour: 9,
        closeHour: 22,
        slotMinutes: 60,
        maxAdvanceDays: 90,
        maxDurationMins: 300,
      },
      {
        name: 'Churrasqueira',
        openHour: 9,
        closeHour: 22,
        slotMinutes: 60,
        maxAdvanceDays: 90,
        maxDurationMins: 300,
      },
    ],
    skipDuplicates: true,
  });
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
