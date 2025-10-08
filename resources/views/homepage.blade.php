<h2> {{ $t }}</h2>



<table class="table-auto">
  <thead>
    <tr>
      <th>ID</th>
      <th>Name</th>
    </tr>
  </thead>
  <tbody>        
    @foreach ( $animal as  $a )
    <tr>
      <td>{{ $a->Id }}</td>
      <td>{{ $a->Name }}</td>
    </tr>
    @endforeach
  </tbody>
</table>
