<?php

namespace App\Http\Controllers;

use App\Models\Store;
use Illuminate\Http\Request;

class StoresController extends Controller
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

        $book = Store::create([
            'name' => $request->name,
        ]);

        return response()->json(['success' => true, 'mensagem' => 'Loja cadastrada com sucesso!', 'data' => $book], 200);
    }

    public function list()
    {
        $books = Store::all();
        return response()->json(['success' => true, 'mensagem' => 'Lojas listadas com sucesso!', 'data' => $books], 200);
    }

    public function update(Request $request)
    {
        $data = $request->validate([
            'id' => ['required', 'integer', 'max:20', 'exists:stores,id'],
            'name' => ['required', 'string', 'max:255'],
        ]);

        $book = Store::findOrFail($request->id);
        $book->update($data);

        return response()->json(['success' => true, 'mensagem' => 'Loja alterada com sucesso!', 'data' => $book], 200);
    }

    public function delete($id)
    {
        $book = Store::where('id', $id)->first();
        if ($book) {
            Store::destroy($id);
            return response()->json(['success' => true, 'mensagem' => 'Loja excluída com sucesso!'], 200);
        } else {
            return response()->json(['success' => false, 'mensagem' => 'Loja não encontrada!'], 404);
        }
    }
}
