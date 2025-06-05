<div>
    <h3>Update Student Data</h3>
    <form action="/edit-student/{{$data->id}} " method="post">
        @csrf
        <input type="hidden" name="_method" value="put">
        <input type="text" name="name" value="{{$data->name}}" placeholder="Enter Name" /><br><br>
        <input type="email" name="email" value="{{$data->email}}" placeholder="Enter Eamil" /><br><br>
        <input type="number" name="phone" value="{{$data->phone}}" placeholder="Enter Phone" /><br><br>
        <button>Update</button>
        <a href="/list"> Cancel </a>
    </form>
</div>
