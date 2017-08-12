% Script only runs if dataset array, grade, is in workspace with added columns
grade = dataset('xlsfile','Students');
grade(1:2,1:5);
grade(1:3,1:6)
grade([1 3 5], [6 8])
