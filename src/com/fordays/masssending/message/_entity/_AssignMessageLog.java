package com.fordays.masssending.message._entity;



/**
 * AssignMessageLog generated by hbm2java
 */


public class _AssignMessageLog 

  extends org.apache.struts.action.ActionForm implements Cloneable
 {
	private static final long serialVersionUID = 1L;

    // Fields    

     protected long id;
     protected java.sql.Timestamp logTime;
     protected String logType;
     protected String content;
     protected Long status;
     protected com.fordays.masssending.message.AssignMessage assignMessage;

     // Constructors
   
    // Property accessors


    public long getId() {
        return this.id;
    }
    
    public void setId(long id) {
        this.id = id;
    }
    


    public java.sql.Timestamp getLogTime() {
        return this.logTime;
    }
    
    public void setLogTime(java.sql.Timestamp logTime) {
        this.logTime = logTime;
    }
    


    public String getLogType() {
        return this.logType;
    }
    
    public void setLogType(String logType) {
        this.logType = logType;
    }
    


    public String getContent() {
        return this.content;
    }
    
    public void setContent(String content) {
        this.content = content;
    }
    


    public Long getStatus() {
        return this.status;
    }
    
    public void setStatus(Long status) {
        this.status = status;
    }
    


    public com.fordays.masssending.message.AssignMessage getAssignMessage() {
        return this.assignMessage;
    }
    
    public void setAssignMessage(com.fordays.masssending.message.AssignMessage assignMessage) {
        this.assignMessage = assignMessage;
    }
    




  // The following is extra code specified in the hbm.xml files

  public Object clone()
  {
    Object o = null;
    try
    {
      o = super.clone();
    }
    catch (CloneNotSupportedException e)
    {
      e.printStackTrace();
    }
    return o;
}

private String thisAction="";
 public String getThisAction()
 {
     return thisAction;
 }


public void setThisAction(String thisAction)
 {
     this.thisAction=thisAction;
 }

private int index=0;
 public int getIndex()
 {
     return index;
 }


public void setIndex(int index)
 {
     this.index=index;
 }
 





  // end of extra code specified in the hbm.xml files


}

