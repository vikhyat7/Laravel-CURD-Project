<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;

class StudentController extends Controller
{
    function add(Request $request){
        $student= new Student;
        $student->name=$request->name;
        $student->email=$request->email;
        $student->phone=$request->phone;
        $student->save();
        if($student){
            return redirect('list');
        }else{
            return "optation Failed";
        }
    }

    function list(){
        $studentData = Student::paginate(10);
        // return $studentData;
        return view('list-student',['students'=>$studentData]);
    }

    function delete($id){
        $isDelete = Student::destroy($id);
        if($isDelete){
            return redirect('list');
        }
    }

    function edit($id){
        $student= Student::find($id);
        return view('edit-student',['data'=>$student]);
    }

    function editStudent(Request $request,$id){
        $student = Student::find($id);
        $student->name= $request->name;
        $student->email= $request->email;
        $student->phone= $request->phone;
        if($student->save()){
            return redirect('list');
        }else{
            return 'Update Failed';
        }
    }
    
    function search(Request $request){
        $studentData = Student::where('name','like',"%$request->search%")->get();
        return view('list-student',['students'=>$studentData,'search'=>$request->search]);
    }

    function deleteMultiple(Request $request){
        $result = Student::destroy($request->ids);
        if($result){
            return redirect('list');
        }else{
            return "Slected recodes not deleted";
        } 
    }
}
