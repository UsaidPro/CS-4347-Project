-- dbfinalproj.restockview source

create or replace
algorithm = UNDEFINED view `dbfinalproj`.`restockview` (`Order_No`,
`Cost`,
`Date`,
`Item_Name`,
`VM_Number`,
`Dist_Brand`) as
select
    `r`.`Order_No` as `Order_No`,
    `r`.`Cost` as `Cost`,
    `r`.`Date` as `Date`,
    `r`.`Name` as `Name`,
    `r`.`VM_No` as `VM_No`,
    `d`.`Brand` as `Brand`
from
    ((`dbfinalproj`.`restocks` `r`
join `dbfinalproj`.`distributor` `d`)
join `dbfinalproj`.`vendingmachineitem` `v`)
where
    ((`r`.`Name` = `v`.`Name`)
        and (`r`.`VM_No` = `v`.`VM_No`)
            and (`r`.`Dist_ID` = `d`.`Dist_ID`));

-- dbfinalproj.transactionsview source

create or replace
algorithm = UNDEFINED view `dbfinalproj`.`transactionsview` (`Transaction_No`,
`VM_No`,
`Amt`,
`User_Lname`) as
select
    `dbfinalproj`.`transactions`.`Transaction_No` as `Transaction_No`,
    `dbfinalproj`.`transactions`.`VM_No` as `vm_No`,
    `dbfinalproj`.`transactions`.`Amt` as `Amt`,
    `dbfinalproj`.`payment`.`Lname` as `Lname`
from
    (`dbfinalproj`.`transactions`
join `dbfinalproj`.`payment`)
where
    (`dbfinalproj`.`transactions`.`Card_No` = `dbfinalproj`.`payment`.`Card_No`);

-- dbfinalproj.vending_machine_unit source

create or replace
algorithm = UNDEFINED view `dbfinalproj`.`vending_machine_unit` (`VM_No`,
`Functioning_Status`,
`Within_Building`,
`Change_Amt`,
`Temperature`) as
select
    `dbfinalproj`.`vendingmachineunit`.`VM_No` as `VM_No`,
    `dbfinalproj`.`vendingmachineunit`.`Functioning_Status` as `Functioning_Status`,
    `dbfinalproj`.`vendingmachineunit`.`Within_Building` as `Within_Building`,
    `dbfinalproj`.`vendingmachineunit`.`Change_Amt` as `Change_Amt`,
    `dbfinalproj`.`vendingmachineunit`.`Temperature` as `Temperature`
from
    `dbfinalproj`.`vendingmachineunit`;