global class SOAP_Example {
    webservice static String invoke(String accIndustry){
        List<Account> accounts =[select id,Name,Phone from Account where industry=:accIndustry];
        Dom.Document doc =new Dom.Document();
        DOM.XMLNode root =doc.createRootElement('Accounts',null,null);
        for(Account a: accounts){
            DOM.XMLNode child=root.addChildElement('Account',null,null);
            child.setAttribute('Name',a.Name);
            child.setAttribute('Phone',a.phone);
        }
        String result=doc.toXmlString();
        return result;
    }
}