<div>
    <h2>Add Student Form</h2>
    <form action="/add" method="post" >
        @csrf
        <input type="text" name="name" placeholder="Enter Name" required><br><br>
        <input type="email" name="email" placeholder="Enter Email" required><br><br>
        <input type="number" name="phone" placeholder="Enter Phone" required><br><br>
        <button>add Student</button>
    </form>

</div>
