
## Descrição

Este é um projeto simples (CRUD) que fiz como demonstração. Nele é possível cadastrar, alterar e remover livros e lojas.

Deixei o .env intensionalmente já que é o padrão do Laravel e eu não acrescentei nada.

Siga os passos abaixo e vai executar o projeto.

## Instalação

```bash
$ composer install
```

## Executando a aplicação

```bash
$ php artisan serve

ou

$ php -S 0.0.0.0:8000 -t public
```

## Rotas
[Links do projeto no Postman](https://api.postman.com/collections/17014709-98d4ded8-8dbe-44d2-b774-5c4f849c8bec?access_key=PMAT-01HXW176PVXXQ0PZ0Y1Y1TC5DR)


Rotas:

- Auth:
    1. http://localhost/auth/register
    2. http://localhost/auth/login

- Books:
    1. http://localhost/books/create
    2. http://localhost/books/list
    3. http://localhost/books/update
    4. http://localhost/books/delete

- Stores:
    1. http://localhost/stores/create
    2. http://localhost/stores/list
    3. http://localhost/stores/update
    4. http://localhost/stores/delete
