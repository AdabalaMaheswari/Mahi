public class Tab_Example {
    public String selected {set;get;}
    
    public void nextButton(){
        selected='comp';
    }
    public PageReference finish(){
        PageReference p=new PageReference('/001/o');
        return p;
    }
    public void prevButton(){
        selected='basic';
    }
}