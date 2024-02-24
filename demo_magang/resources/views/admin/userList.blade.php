@extends('layouts.app')

@section('content')
    <h1>Daftar Pengguna</h1>
    <table>
        <thead>
            <tr>
                <th>Nama</th>
                <th>Email</th>
                <!-- Kolom-kolom lainnya sesuai kebutuhan -->
            </tr>
        </thead>
        <tbody>
            @foreach($users as $user)
                <tr>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->email }}</td>
                    <!-- Kolom-kolom lainnya sesuai kebutuhan -->
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
