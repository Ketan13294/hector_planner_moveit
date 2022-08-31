#!/bin/bash

FILE=quadcoter_assignment.tgz
tar cfz $HOME/$FILE -C ~/rml_ws/src/quaddrone_assignment quaddroneAssignment

tar xfzO $HOME/$FILE quaddrone_assignment/hector_planner_moveit/src/RMLPlanner_context.cpp
echo -e "\n\n\nYour package file is at $HOME/$FILE"
echo -e "The package contains the file RMLPlanner_context.cpp printed above."
echo -e "Please make sure this file is correct before submitting your package."
