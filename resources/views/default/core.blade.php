@foreach ($users as $user)
    {{ $user['name'] .'-'. $user['country']['name'] }}


@endforeach