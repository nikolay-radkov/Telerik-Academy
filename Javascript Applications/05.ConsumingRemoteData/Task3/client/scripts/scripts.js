// Generated by CoffeeScript 1.7.1
(function () {
  var $errorMessage, $successMessage, addStudent, deleteStudent, reloadStudents, resourceUrl, deleteUrl;

  resourceUrl = 'http://localhost:3000/students';
  deleteUrl = 'locahost:3000/';

  $successMessage = $('.messages .success');

  $errorMessage = $('.messages .error');

  addStudent = function (data) {
    return $.ajax({
      url: resourceUrl,
      type: 'POST',
      data: JSON.stringify(data),
      contentType: 'application/json',
      success: function (data) {
        $successMessage
          .html('' + data.name + ' successfully added')
          .show()
          .fadeOut(2000);
        reloadStudents();
      },
      error: function (err) {
        $errorMessage
          .html('Error happened: ' + err)
          .show()
          .fadeOut(2000);
      }
    });
  };

    deleteStudent = function (data) {
        return $.ajax({
            url: resourceUrl + '/' + data,
            type: 'POST',
            data: {_method: 'delete'},
            success: function (data) {
                $successMessage
                    .html('Student successfully removed')
                    .show()
                    .fadeOut(2000);
                reloadStudents();
            },
            error: function (err) {
                $errorMessage
                    .html('Error happened: ' + err)
                    .show()
                    .fadeOut(2000);
            }
        });
    };

  reloadStudents = function () {
    $.ajax({
      url: resourceUrl,
      type: 'GET',
      contentType: 'application/json',
      success: function (data) {
        var student, $studentsList, i, len;
        $studentsList = $('<ul/>').addClass('students-list');
        for (i = 0, len = data.students.length; i < len; i++) {
          student = data.students[i];
          $('<li />')
            .addClass('student-item')
            .append($('<em /> ')
                  .html(student.id))
            .append($('<strong /> ')
              .html(student.name))
            .append($('<span />')
              .html(student.grade))
            .appendTo($studentsList);
        }
        $('#students-container').html($studentsList);
      },
      error: function (err) {
          console.log(err);
        $errorMessage
          .html("Error happened: " + err)
          .show()
          .fadeOut(2000);
      }
    });
  };

  $(function () {
    reloadStudents();
    $('#btn-add-student').on('click', function () {
      var student;
      student = {
        name: $('#tb-name').val(),
        grade: $('#tb-grade').val()
      };
      addStudent(student);
    });

      $('#btn-delete-student').on('click', function() {
          var id = $('#tb-id').val();
          deleteStudent(id);
      })
  });

}).call(this);

//# sourceMappingURL=scripts.map