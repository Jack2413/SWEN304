select distinct security,skillid,description,robbers.robberid,nickname from (select distinct security,skillid,description from (select distinct bankname,city,security,robberid,nickname,skillID,skills.description from accompiecs natural join banks natural join robbers natural join hasskills natural join skills order by bankname,city,security,description) as tempc order by security,description) as temps natural join robbers natural join hasskills natural join skills;