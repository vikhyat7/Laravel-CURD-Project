<div>
    <h2>Student List</h2>
    <form method="get" action="search">
        <input type="text" name="search" value="{{@$search}}" />
        <button>Search</button>
    </form>

    <button style="
    margin-left: 30%;
    margin-top: -2%;
    "><a href="/add">Add Student</a><a></a></button>
    <form method="post" action="/delete-multi">
        @csrf
        <button>Delete</button>
    <table border="1">
        <tr>
            <td>Selection</td>
            <td>id</td>
            <td>name</td>
            <td>email</td>
            <td>phone</td>
            <td>created_at</td>
            <td>updated_at</td>
            <td>Opration</td>
        </tr>
        @foreach($students as $stud)
        <tr>
            <td><input name="ids[]" type="checkbox" value="{{$stud->id}}" /></td>
            <td>{{$stud->id}}</td>
            <td>{{$stud->name}}</td>
            <td>{{$stud->email}}</td>
            <td>{{$stud->phone}}</td>
            <td>{{$stud->created_at}}</td>
            <td>{{$stud->updated_at}}</td>
            <td><a href="{{'delete/'.$stud->id}}">Delete</a> &nbsp; <a href="{{'edit/'.$stud->id}}">Edit</a></td>
        </tr>
        @endforeach
    </table>
    </form>
    <br>
    <br>
    {{$students->links()}}
</div>
<br>
<br>


<style>
.w-5.h-5{
    width: 16px;
}
</style>