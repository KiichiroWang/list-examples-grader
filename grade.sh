CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests

cd student-submission
if [[ -f "ListExamples.java" ]] 
    then
        echo "Correct File Located."
    else
        echo "File not found."
fi 
cd ..

cd grading-area
ls

cp student-submission/ListExamples.java grading-area
cp TestListExamples.java grading-area


javac -d grading-area/*.java
