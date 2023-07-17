#include <iostream>
#include <string>

//Function declarations
void Initialize();
void FindPath();
void TakeAction();
void MakeProgress();
void ShareExperience();
void Celebrate();

int main()
{
	Initialize();
	FindPath();
	TakeAction();
	MakeProgress();
	ShareExperience();
	Celebrate();
	
	return 0;
}

//Function definitions
void Initialize()
{
	std::cout << "Gathering the strength and courage it takes to begin the road to recovery." << std::endl;
}

void FindPath()
{
	std::cout << "Working through the steps to develop a plan of action." << std::endl; 
}

void TakeAction()
{
	std::cout << "Choosing to make further strides towards healthy success." << std::endl;
}

void MakeProgress()
{
	std::cout << "Making small steps in the right direction, instead of faltering." << std::endl;
}

void ShareExperience()
{
	std::cout << "Helping others and sharing our own experiences along the way." << std::endl;
}

void Celebrate()
{
	std::cout << "Celebrating each and every success and time spent learning." << std::endl;
}