trigger Loan_Application_Share on Loan_Application__c (after insert) {

    List<Loan_Application__Share> loanShares = new List<Loan_Application__Share>();
    
    for(Loan_Application__c loan : trigger.new){
        Loan_Application__Share loanShare  = new Loan_Application__Share();
        loanShare.ParentId = loan.Id;
        loanShare.AccessLevel = 'Edit';
        loanShare.UserOrGroupId =  loan.Secondary_Relationship_Manager__c;
        loanShare.RowCause = Schema.Loan_Application__Share.RowCause.Manual;
        loanShares.add(loanShare);
   
   }
  Database.SaveResult[] loanShareInsertResult = Database.insert(loanShares,false);     

}