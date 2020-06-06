/**
 * ClosedOpportunityTrigger.
 *
 * mass Apex Trigger for add tasks in Opportunities whit Stage Close Won. Trailhead challenge
 *
 * @author Tiago Welter - tiagowelter@gmail.com
 * @since 06.06.2019
 *
 * @see
 */
 trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<Task> taskInsert = new List<Task>();
    for(Opportunity o : Trigger.new){
        if(o.StageName == 'Closed Won') taskInsert.add(new Task(Subject = 'Follow Up Test Task', WhatId = o.Id));
    }
    if(taskInsert.size() > 0) insert taskInsert;
}
