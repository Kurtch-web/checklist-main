document.addEventListener('DOMContentLoaded', function() {
    var searchBox = document.getElementById('course-search');
    var filterYear = document.getElementById('filter_year');
    var filterSemester = document.getElementById('filter_semester');
    var tables = document.querySelectorAll('.course-table .table-container');
    var searchTimer;
   
    // Custom function to create a pop-up window
    function showPopup(message) {
        // Create overlay
        var overlay = document.createElement('div');
        overlay.className = 'popup-overlay';
        
        // Create popup container
        var popupContainer = document.createElement('div');
        popupContainer.className = 'popup-container';
        
        // Create popup content
        var popup = document.createElement('div');
        popup.className = 'popup';
        popup.textContent = message;
        
        // Append popup content to container
        popupContainer.appendChild(popup);
        
        // Append container to body
        document.body.appendChild(overlay);
        document.body.appendChild(popupContainer);
        
        // Remove the popup after 2 seconds
        setTimeout(function() {
            document.body.removeChild(overlay);
            document.body.removeChild(popupContainer);
        }, 2000);
    }

    function toggleSelects(disabled) {
        filterYear.disabled = disabled;
        filterSemester.disabled = disabled;
    }

    filterYear.addEventListener('change', filterCourses);
    filterSemester.addEventListener('change', filterCourses);

    function filterCourses() {
        var selectedYear = filterYear.value;
        var selectedSemester = filterSemester.value;

        tables.forEach(function(table) {
            var semesterTitle = table.querySelector('h2').textContent.trim();
            var year = semesterTitle.split(" ")[0];
            var semester = semesterTitle.split(" ")[2];

            var tableVisible = true;

            if (selectedYear !== 'all' && selectedYear !== 'Mid Year' && year !== selectedYear) {
                tableVisible = false;
            } else if (selectedYear === 'Mid Year' && semesterTitle !== 'Mid Year Courses') {
                tableVisible = false;
            } else if (selectedSemester !== 'all' && semester !== selectedSemester) {
                tableVisible = false;
            }

            table.style.display = tableVisible ? '' : 'none';
        });

        var validTableSelected = Array.from(tables).some(function(table) {
            return table.style.display !== 'none';
        });

        if (!validTableSelected) {
            showPopup('No courses found for the selected year and semester.');
        }
    }

    searchBox.addEventListener('input', function() {
        clearTimeout(searchTimer);

        searchTimer = setTimeout(function() {
            var searchValue = searchBox.value.trim().toLowerCase();
            var found = false;

            tables.forEach(function(table) {
                var semesterTitle = table.querySelector('h2').textContent.trim();
                var year = semesterTitle.split(" ")[0];
                var semester = semesterTitle.split(" ")[2];

                if ((filterYear.value !== 'all' && filterYear.value !== year) ||
                    (filterSemester.value !== 'all' && filterSemester.value !== semester && !(filterSemester.value === 'Mid' && semester === 'Year'))) {
                    return; // Skip searching if the table is not visible
                }

                var rows = table.querySelectorAll('table tbody tr');

                rows.forEach(function(row, rowIndex) {
                    if (rowIndex !== 0) {
                        var cells = row.querySelectorAll('td');
                        var rowVisible = false;

                        cells.forEach(function(cell, cellIndex) {
                            var cellText = cell.textContent.trim().toLowerCase();
                            if (cellText.includes(searchValue)) {
                                rowVisible = true;
                                found = true;
                            }
                        });

                        row.style.display = rowVisible ? '' : 'none';
                    } else {
                        row.style.display = '';
                    }
                });

                var tableVisible = Array.from(rows).some(function(row, rowIndex) {
                    return rowIndex !== 0 && row.style.display !== 'none';
                });

                table.style.display = tableVisible ? '' : 'none';
            });

            if (!found && searchValue !== '') {
                showPopup('No matching results found.');
            }

            if (searchValue === '') {
                filterCourses();
                toggleSelects(false);
            } else {
                toggleSelects(true);
            }
        }, 600);
    });
});
