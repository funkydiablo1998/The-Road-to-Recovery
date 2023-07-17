<?php

//File 1

//Function to Calculate the Chance of Recovery from an Illness

function calculateRecoveryChance($illness, $severity) {

$recoveryChance = 0;

switch($illness) {

case "Cancer":

  if ($severity == "Mild") {
    $recoveryChance = 75;
  }
  elseif ($severity == "Moderate") {
    $recoveryChance = 50;
  }
  elseif ($severity == "Severe") {
    $recoveryChance = 25;
  }
  break;

case "Diabetes":

  if ($severity == "Mild") {
    $recoveryChance = 90;
  }
  elseif ($severity == "Moderate") {
    $recoveryChance = 75;
  }
  elseif ($severity == "Severe") {
    $recoveryChance = 50;
  }
  break;

case "Depression":

  if ($severity == "Mild") {
    $recoveryChance = 60;
  }
  elseif ($severity == "Moderate") {
    $recoveryChance = 40;
  }
  elseif ($severity == "Severe") {
    $recoveryChance = 20;
  }
  break;

default:
  $recoveryChance = 0;
  break;

}

return $recoveryChance;

}


//Function to Calculate the Time to Recovery from an Illness 

function calculateRecoveryTime($illness, $severity) {

$recoveryTime = 0;

switch($illness) {

case "Cancer":

  if ($severity == "Mild") {
    $recoveryTime = 6;
  }
  elseif ($severity == "Moderate") {
    $recoveryTime = 12;
  }
  elseif ($severity == "Severe") {
    $recoveryTime = 24;
  }
  break;

case "Diabetes":

  if ($severity == "Mild") {
    $recoveryTime = 4;
  }
  elseif ($severity == "Moderate") {
    $recoveryTime = 8;
  }
  elseif ($severity == "Severe") {
    $recoveryTime = 12;
  }
  break;

case "Depression":

  if ($severity == "Mild") {
    $recoveryTime = 3;
  }
  elseif ($severity == "Moderate") {
    $recoveryTime = 6;
  }
  elseif ($severity == "Severe") {
    $recoveryTime = 9;
  }
  break;

default:
  $recoveryTime = 0;
  break;

}

return $recoveryTime;

}


//Function to Calculate the Cost of Recovery from an Illness 

function calculateRecoveryCost($illness, $severity) {

$recoveryCost = 0;

switch($illness) {

case "Cancer":

  if ($severity == "Mild") {
    $recoveryCost = 1000;
  }
  elseif ($severity == "Moderate") {
    $recoveryCost = 5000;
  }
  elseif ($severity == "Severe") {
    $recoveryCost = 10000;
  }
  break;

case "Diabetes":

  if ($severity == "Mild") {
    $recoveryCost = 500;
  }
  elseif ($severity == "Moderate") {
    $recoveryCost = 2500;
  }
  elseif ($severity == "Severe") {
    $recoveryCost = 5000;
  }
  break;

case "Depression":

  if ($severity == "Mild") {
    $recoveryCost = 250;
  }
  elseif ($severity == "Moderate") {
    $recoveryCost = 1000;
  }
  elseif ($severity == "Severe") {
    $recoveryCost = 2000;
  }
  break;

default:
  $recoveryCost = 0;
  break;

}

return $recoveryCost;

}


//Function to Calculate the Plan for Recovery

function generateRecoveryPlan($illness, $severity) {

$recoveryChance = calculateRecoveryChance($illness, $severity);
$recoveryTime = calculateRecoveryTime($illness, $severity);
$recoveryCost = calculateRecoveryCost($illness, $severity);

$recoveryPlan = "Based on your illness, the chance of full recovery is " . $recoveryChance . "%. The approximate time to recovery is " . $recoveryTime . 
" months. The anticipated cost for this recovery is $" . $recoveryCost . ".";

return $recoveryPlan;

}

?>