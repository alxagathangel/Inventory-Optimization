# Warehouse Inventory Optimization using SQL and Python
## Scenario
A company of model vehicles is planning on closing one of their storage facilities.
They're looking for ways to reorganize and reduce inventory. We are provided with the database shown below.
![MintClassicsDataModel](https://github.com/user-attachments/assets/382dd424-9149-42ed-8dd6-0586f41bf577)
## Approach
### Warehouse Organization
After some database inspection, it was obvious that each 
Warehouse houses a different type of Product Line, and there are 7 Lines in total.
With this, we can plot the following information:
1. Each Warehouse contains a current amount of total items, regardless
of Product Line, as shown in the next plot.

![fig1_1](https://github.com/user-attachments/assets/3cfcab80-10d7-4925-a10b-9c6578fcffa8)

2. Each Warehouse had a certain number of Products within these Lines
	We can see the two figures show the same distribution order. Warehouse b has the
most items and Products, followed by a, c, and d being the last.

![fig1_2](https://github.com/user-attachments/assets/c718222e-073f-44bd-8d5b-8b6672f8b684)

3. The distribution of Products by Product Line is shown below.

![fig1_3](https://github.com/user-attachments/assets/455df2aa-28a4-411e-8481-0f4174833904)

The next plot shows the percentage that each Warehouse is utilized,
according to its capacity.
a. Warehouse c is the most unutilized of the four, with a percentage of 50%.
b. Warehouse d, despite containing the lowest number of products, is highly utilized (75%), meaning that it also has a lower overall capacity.

![fig2_1](https://github.com/user-attachments/assets/76e38737-7e84-4c07-b98d-e05f0dad2a66)

### Product Movement
Moving on, we're examining the amount of times a Product has been ordered, as well as
which Warehouse it's stored in. Warehouse b has been receiving the most orders, with 
a, c and d being around the 20k mark, more than 10k less product sales.

![fig2_2](https://github.com/user-attachments/assets/661b1c47-cbb1-4982-ac73-20b61ec62860)

In summary, Warehouse b has the most items across all Warehouses, housing 
only the Classic Cars Line, and has been getting the most sales.
Warehouse d is nearly capped, despite having the least items. The next lowest utilized Warehouse is c.
With a simple calculation, we discover that moving the Warehouse d items to Warehouse c,
we get a 81% utilized Warehouse, with a total of 204,260 items in inventory.
The new plot is shown in the following plot.

![fig2_3](https://github.com/user-attachments/assets/a3c48133-9be2-4996-ad6a-ec37cc0a560f)

With this relocation, the company has achieved a 31% effiency in product placement in Warehouse c. Based on the insights provided by this analysis, it's important to make data driven decisions while managing storage. 
