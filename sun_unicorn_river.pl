#!/usr/bin/perl

# The Road to Recovery

###
# Part 1 - Determination 
###

#Set your goal
$myGoal = "Find a job";

#Write down why it's important to you
$myWhy = "I want financial security and the ability to support my family.";

#Create a plan to achieve your goal
$myPlan = "
- Create a professional resume
- Search for job openings
- Network with professionals in my chosen field
- Practice for interviews
- Apply for jobs
- Follow up with employers";

#Commit to the plan
$myCommitment = "I will commit to my plan and devote 2 hours every day to job searching.";

print "My Goal: $myGoal\n";
print "My Why: $myWhy\n";
print "My Plan:\n$myPlan\n";
print "My Commitment: $myCommitment\n\n";

###
# Part 2 - Action 
###

#Search for job openings
$startTime = time();
@jobsFound = (); 
$jobCount = 0;

open(my $JOB_FILE, '<', 'jobListings.csv') or die "Could not open jobListings.csv: $!";
while (my $jobRow = <$JOB_FILE>) { 
	chomp $jobRow;
	my @jobData = split(/,/, $jobRow);
	if($jobData[4] eq $myGoal) {
		push(@jobsFound, \@jobData);
		$jobCount++;
	}
}
close $JOB_FILE;

$endTime = time();
$elapsedTime = $endTime - $startTime;

#Print Results
print "Time Elapsed: $elapsedTime seconds\n";
print "Jobs found: $jobCount\n";
foreach my $job (@jobsFound) {
	print "Job title: $$job[1]\n";
	print "Job description: $$job[2]\n";
	print "Company: $$job[3]\n\n";
}

###
# Part 3 - Dedication 
###

#Arrange Interviews
@interviewsScheduled = ();
$totalInterviews = 0;

foreach my $job (@jobsFound) {
	my $interviewTime = $$job[5];
	my $interviewDate = $$job[6];
	if(makeInterview($interviewTime, $interviewDate)) {
		my $schedule = {
			time => $interviewTime,
			date => $interviewDate
		};
		push(@interviewsScheduled, $schedule);
		$totalInterviews++;
	}
}

#Print Results
print "Interviews Scheduled: $totalInterviews\n";
foreach my $interview (@interviewsScheduled) {
	print "Interview Time: $$interview{time}\n";
	print "Interview Date: $$interview{date}\n\n";
}

###
# Part 4 - Reflection 
###

#Reflect on your journey
$reflection = "I have worked hard to reach this point and I am proud to have taken action and achieved my goal. I have learned valuable lessons about dedication and perseverance that will serve me in my life and career.";

print "Reflection:\n$reflection\n";

###
# Helper Functions 
###

sub makeInterview {
	my ($interviewTime, $interviewDate) = @_;
	
	#Code to make interview...
	
	return $madeInterview;
}