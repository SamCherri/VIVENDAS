# VIVENDAS

Projeto inicial em Node.js com TypeScript.

## Scripts

- `npm run dev` – inicia servidor com ts-node-dev.
- `npm start` – executa a versão compilada.
- `npm run lint` – analisa o código com ESLint.
- `npm run fmt` – formata com Prettier.
- `npm test` – roda os testes com Jest.
- `npm run build` – gera a versão compilada em `dist/`.
- `npm run prisma:generate` – gera o cliente Prisma.
- `npm run prisma:migrate` – executa migrações do banco.
- `npm run seed` – popula o banco com dados iniciais.

## Como rodar

1. Instale as dependências com `npm ci`.
2. Gere o cliente com `npm run prisma:generate`.
3. Rode as migrações com `npm run prisma:migrate`.
4. Popule o banco com `npm run seed`.
5. Inicie o servidor em desenvolvimento com `npm run dev`.
6. Rode os testes com `npm test`.
7. Gere o build com `npm run build`.
8. Execute o build com `npm start`.
