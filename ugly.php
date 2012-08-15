<?php
  // Our list of emails
  $string = "mal@sitepoint.com, mal@learnable.com, kevin@sitepoint.com";
  &nbsp;
  // Explode into an array of emails
  $emails = explode(', ', $string);
  &nbsp;
  // Create a function to remove anything which isn’t the domain portion of the email
  $leave_domain = function($subject){
      return preg_replace("/^(.*)@/","", $subject);
  };
  &nbsp;
  // Apply the function we just created to the emails array
  $domains = array_map($leave_domain, $emails);
  &nbsp;
  // Remove any repeated domains
  $unique_domains = array_unique($domains);
  &nbsp;
  print_r($unique_domains);
?>
