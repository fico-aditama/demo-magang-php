<form action="{{ route('admin.users.search') }}" method="GET">
    <input type="text" name="keyword" placeholder="Cari pengguna...">
    <button type="submit">Cari</button>
</form>
<h1>Hasil Pencarian untuk "{{ $keyword }}"</h1>

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
