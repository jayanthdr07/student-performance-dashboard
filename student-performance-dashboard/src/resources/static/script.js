async function loadStudents() {
    const res = await fetch('http://localhost:8080/api/students');
    const data = await res.json();
    const tbody = document.querySelector('#studentsTable tbody');
    tbody.innerHTML = '';
    data.forEach(s => {
        tbody.innerHTML += `
        <tr>
          <td>${s.id}</td>
          <td>${s.name}</td>
          <td>${s.marks1}</td>
          <td>${s.marks2}</td>
          <td>${s.attendance}</td>
          <td>${s.total}</td>
          <td>${s.percentage}</td>
          <td>${s.result}</td>
          <td>${s.grade}</td>
          <td>${s.remark}</td>
          <td>${s.failReason}</td>
        </tr>
        `;
    });
}

loadStudents();
