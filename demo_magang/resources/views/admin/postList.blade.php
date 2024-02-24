@extends('layouts.app')

@section('content')
    <h1>Daftar Postingan</h1>
    <table>
        <thead>
            <tr>
                <th>Judul</th>
                <th>Konten</th>
                <!-- Kolom-kolom lainnya sesuai kebutuhan -->
            </tr>
        </thead>
        <tbody>
            @foreach($posts as $post)
                <tr>
                    <td>{{ $post->title }}</td>
                    <td>{{ $post->content }}</td>
                    <!-- Kolom-kolom lainnya sesuai kebutuhan -->
                </tr>
            @endforeach
        </tbody>
    </table>
@endsection
