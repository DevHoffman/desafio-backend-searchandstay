<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;

class BooksController extends Controller
{
    /**
     * Handle an incoming registration request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function create(Request $request)
    {
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
        ]);

        $book = Book::create([
            'name' => $request->name,
        ]);

        return response()->json(['success' => true, 'mensagem' => 'Livro cadastrado com sucesso!', 'data' => $book], 200);
    }

    public function list()
    {
        $books = Book::all();
        return response()->json(['success' => true, 'mensagem' => 'Livros listados com sucesso!', 'data' => $books], 200);
    }

    public function update(Request $request)
    {
        $data = $request->validate([
            'id' => ['required', 'integer', 'max:20', 'exists:books,id'],
            'name' => ['required', 'string', 'max:255'],
        ]);

        $book = Book::findOrFail($request->id);
        $book->update($data);

        return response()->json(['success' => true, 'mensagem' => 'Livro alterado com sucesso!', 'data' => $book], 200);
    }

    public function delete($id)
    {
        $book = Book::where('id', $id)->first();
        if ($book) {
            Book::destroy($id);
            return response()->json(['success' => true, 'mensagem' => 'Livro excluído com sucesso!'], 200);
        } else {
            return response()->json(['success' => false, 'mensagem' => 'Livro não encontrado!'], 404);
        }
    }
}
