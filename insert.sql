INSERT INTO [User] (FirstName, MidName, LastName, Phone, BirthDate, [Status], StatusWorking, SpaId, province_code, district_code, ward_code)
VALUES 
(N'Nguyễn', N'Văn', N'An', '0901123456', '1985-05-15', 'ACTIVE', 'AVAILABLE', 1, '001', '002', '003'),
(N'Trần', N'Thị', N'Bích', '0902234567', '1990-09-20', 'ACTIVE', 'AVAILABLE', 2, '004', '005', '006'),
(N'Lê', N'Hoàng', N'Phúc', '0903345678', '1988-12-10', 'ACTIVE', 'AVAILABLE', 3, '007', '008', '009'),
(N'Phạm', N'Minh', N'Triết', '0904456789', '1992-07-07', 'ACTIVE', 'AVAILABLE', 4, '010', '011', '012'),
(N'Vũ', N'Hà', N'Linh', '0905567890', '1995-03-25', 'ACTIVE', 'AVAILABLE', 5, '013', '014', '015');
INSERT INTO User_Role (UserId, RoleId) VALUES
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5);


INSERT INTO Salary (EmployeeId, BaseSalary, Allowances, Bonus, Deductions, TotalSalary, SalaryMonth, SalaryYear)
VALUES 
    (3, 10000000, 2000000, 1500000, 500000, (10000000 + 2000000 + 1500000 - 500000), 8, 2024);

	-- Chèn 30 dịch vụ vào bảng Service
INSERT INTO [Service] (ServiceName, Amount, [Description])
VALUES 
    (N'Massage Thư Giãn', 250000, N'Dịch vụ massage thư giãn cơ thể, giúp giảm căng thẳng và mệt mỏi.'),
    (N'Chăm Sóc Da Mặt', 300000, N'Dịch vụ chăm sóc da mặt chuyên sâu, giúp làm sạch và cải thiện tình trạng da.'),
    (N'Xông Hơi', 150000, N'Dịch vụ xông hơi giúp giải độc cơ thể và thư giãn.'),
    (N'Trị Liệu Bằng Thảo Dược', 400000, N'Dịch vụ trị liệu bằng thảo dược, giúp cải thiện sức khỏe và tinh thần.'),
    (N'Thư Giãn Toàn Thân', 500000, N'Dịch vụ thư giãn toàn thân bao gồm massage và xông hơi.'),
    (N'Chăm Sóc Tóc', 200000, N'Dịch vụ chăm sóc tóc, bao gồm gội, cắt và tạo kiểu.'),
    (N'Diểm Trang', 180000, N'Dịch vụ trang điểm chuyên nghiệp cho các sự kiện và lễ hội.'),
    (N'Phục Hồi Cơ Bắp', 350000, N'Dịch vụ phục hồi cơ bắp sau tập luyện, giúp giảm đau và căng thẳng.'),
    (N'Massage Chân', 220000, N'Dịch vụ massage chân giúp thư giãn và giảm mệt mỏi.'),
    (N'Chăm Sóc Mắt', 250000, N'Dịch vụ chăm sóc mắt giúp giảm mỏi mắt và cải thiện sức khỏe mắt.'),
    (N'Chăm Sóc Da Toàn Thân', 400000, N'Dịch vụ chăm sóc da toàn thân, bao gồm tẩy tế bào chết và dưỡng ẩm.'),
    (N'Trị Liệu Ánh Sáng', 350000, N'Dịch vụ trị liệu ánh sáng giúp làm sáng da và giảm nám.'),
    (N'Thư Giãn Cổ Vai', 200000, N'Dịch vụ thư giãn cổ và vai, giúp giảm căng thẳng và đau nhức.'),
    (N'Tẩy Da Chết', 230000, N'Dịch vụ tẩy da chết giúp loại bỏ tế bào chết và làm sáng da.'),
    (N'Dưỡng Da Mặt', 270000, N'Dịch vụ dưỡng da mặt giúp cung cấp độ ẩm và làm mềm da.'),
    (N'Massage Dầu', 300000, N'Dịch vụ massage bằng dầu thơm giúp thư giãn và làm mềm da.'),
    (N'Trị Liệu Bằng Oxy', 320000, N'Dịch vụ trị liệu bằng oxy giúp cải thiện sức khỏe da và tăng cường lưu thông máu.'),
    (N'Chăm Sóc Da Mặt Cơ Bản', 200000, N'Dịch vụ chăm sóc da mặt cơ bản bao gồm làm sạch và dưỡng ẩm.'),
    (N'Thư Giãn Cơ Thể', 280000, N'Dịch vụ thư giãn cơ thể toàn diện giúp giảm mệt mỏi và căng thẳng.'),
    (N'Chăm Sóc Móng Tay', 180000, N'Dịch vụ chăm sóc và làm đẹp móng tay.'),
    (N'Chăm Sóc Móng Chân', 200000, N'Dịch vụ chăm sóc và làm đẹp móng chân.'),
    (N'Chăm Sóc Da Toàn Thân Nâng Cao', 500000, N'Dịch vụ chăm sóc da toàn thân nâng cao với các liệu pháp đặc biệt.'),
    (N'Trị Liệu Hơi Nước', 250000, N'Dịch vụ trị liệu bằng hơi nước giúp làm sạch và thư giãn da.'),
    (N'Chăm Sóc Da Tay', 220000, N'Dịch vụ chăm sóc da tay giúp làm mềm và làm sáng da tay.'),
    (N'Thư Giãn Đầu', 200000, N'Dịch vụ thư giãn đầu giúp giảm đau đầu và căng thẳng.'),
    (N'Chăm Sóc Da Mặt Đặc Biệt', 350000, N'Dịch vụ chăm sóc da mặt đặc biệt với các sản phẩm chuyên sâu.'),
    (N'Trị Liệu Tinh Dầu', 300000, N'Dịch vụ trị liệu bằng tinh dầu giúp thư giãn và cải thiện tâm trạng.'),
    (N'Massage Thể Thao', 350000, N'Dịch vụ massage thể thao giúp phục hồi cơ bắp và giảm căng thẳng.'),
    (N'Chăm Sóc Da Mặt Chuyên Sâu', 400000, N'Dịch vụ chăm sóc da mặt chuyên sâu với các liệu pháp nâng cao.'),
    (N'Massage Hơi Nước', 220000, N'Dịch vụ massage kết hợp hơi nước giúp thư giãn cơ thể.'),
    (N'Thư Giãn Cơ Bắp Đặc Biệt', 350000, N'Dịch vụ thư giãn cơ bắp đặc biệt với các liệu pháp nâng cao.'),
    (N'Chăm Sóc Da Toàn Thân Đặc Biệt', 500000, N'Dịch vụ chăm sóc da toàn thân đặc biệt với các liệu pháp cao cấp.'),
    (N'Trị Liệu Định Kỳ', 300000, N'Dịch vụ trị liệu định kỳ giúp duy trì sức khỏe và làm đẹp lâu dài.');
-- Chèn 10 combo vào bảng Combo
INSERT INTO [Combo] (name, quantity, note, Price, discount, SalePrice)
VALUES 
    (N'Combo Thư Giãn 1', 1, N'Bao gồm massage thư giãn và xông hơi.', 450000, 10.00, 405000),
    (N'Combo Chăm Sóc Da Mặt', 1, N'Chăm sóc da mặt cơ bản và dưỡng da mặt.', 550000, 15.00, 467500),
    (N'Combo Phục Hồi Cơ Bắp', 1, N'Phục hồi cơ bắp và massage chân.', 600000, 20.00, 480000),
    (N'Combo Chăm Sóc Tóc và Móng', 1, N'Chăm sóc tóc và làm đẹp móng tay.', 400000, 5.00, 380000),
    (N'Combo Massage Dầu và Chăm Sóc Da Tay', 1, N'Massage dầu và chăm sóc da tay.', 500000, 10.00, 450000),
    (N'Combo Trị Liệu Ánh Sáng và Xông Hơi', 1, N'Trị liệu ánh sáng và xông hơi.', 700000, 25.00, 525000),
    (N'Combo Thư Giãn Đầu và Cổ Vai', 1, N'Thư giãn đầu và cổ vai.', 350000, 8.00, 322000),
    (N'Combo Massage Toàn Thân và Chăm Sóc Da', 1, N'Massage toàn thân và chăm sóc da toàn thân.', 800000, 20.00, 640000),
    (N'Combo Tẩy Da Chết và Dưỡng Da Mặt', 1, N'Tẩy da chết và dưỡng da mặt.', 470000, 12.00, 412600),
    (N'Combo Massage Hơi Nước và Trị Liệu Tinh Dầu', 1, N'Massage hơi nước và trị liệu tinh dầu.', 550000, 18.00, 451000);
	
INSERT INTO Room (SpaId, RoomName) 
VALUES 
(1, N'Phòng VIP 1'),
(1, N'Phòng VIP 2'),
(1, N'Phòng Thư Giãn 1');

-- Các phòng cho SenShine Spa Sain (SpaId = 2)
INSERT INTO Room (SpaId, RoomName) 
VALUES 
(2, N'Phòng VIP 1'),
(2, N'Phòng VIP 2'),
(2, N'Phòng Thư Giãn 1');

-- Các phòng cho SenShine Spa Danang (SpaId = 3)
INSERT INTO Room (SpaId, RoomName) 
VALUES 
(3, N'Phòng VIP 1'),
(3, N'Phòng VIP 2'),
(3, N'Phòng Thư Giãn 1');

-- Các phòng cho SenShine Spa Hue (SpaId = 4)
INSERT INTO Room (SpaId, RoomName) 
VALUES 
(4, N'Phòng VIP 1'),
(4, N'Phòng VIP 2'),
(4, N'Phòng Thư Giãn 1');

-- Các phòng cho SenShine Spa Can Tho (SpaId = 5)
INSERT INTO Room (SpaId, RoomName) 
VALUES 
(5, N'Phòng VIP 1'),
(5, N'Phòng VIP 2'),
(5, N'Phòng Thư Giãn 1');

-- Chèn dữ liệu vào bảng BedN'Giường
-- Các giường cho Phòng VIP 1 của SenShine Spa Hanoi (RoomId = 1)

INSERT INTO Bed (RoomId, BedNumber, StatusWorking) 
VALUES 
(1, N'Giường 1', 'ACTIVE'),
(1, N'Giường 2', 'INACTIVE');

-- Các giường cho Phòng VIP 2 của SenShine Spa Hanoi (RoomId = 2)
INSERT INTO Bed (RoomId, BedNumber, StatusWorking) 
VALUES 
(2, N'Giường 1', 'ACTIVE'),
(2, N'Giường 2', 'ACTIVE');

-- Các giường cho Phòng Thư Giãn 1 của SenShine Spa Hanoi (RoomId = 3)
INSERT INTO Bed (RoomId, BedNumber, StatusWorking) 
VALUES 
(3, N'Giường 1', 'INACTIVE'),
(3, N'Giường 2', 'ACTIVE');

-- Các giường cho Phòng VIP 1 của SenShine Spa Sain (RoomId = 4)
INSERT INTO Bed (RoomId, BedNumber, StatusWorking) 
VALUES 
(4, N'Giường 1', 'ACTIVE'),
(4, N'Giường 2', 'INACTIVE');

-- Các giường cho Phòng VIP 2 của SenShine Spa Sain (RoomId = 5)
INSERT INTO Bed (RoomId, BedNumber, StatusWorking) 
VALUES 
(5, N'Giường 1', 'ACTIVE'),
(5, N'Giường 2', 'ACTIVE');

-- Các giường cho Phòng Thư Giãn 1 của SenShine Spa Sain (RoomId = 6)
INSERT INTO Bed (RoomId, BedNumber, StatusWorking) 
VALUES 
(6, N'Giường 1', 'INACTIVE'),
(6, N'Giường 2', 'ACTIVE');

-- Các giường cho Phòng VIP 1 của SenShine Spa Danang (RoomId = 7)
INSERT INTO Bed (RoomId, BedNumber, StatusWorking) 
VALUES 
(7, N'Giường 1', 'ACTIVE'),
(7, N'Giường 2', 'ACTIVE');

-- Các giường cho Phòng VIP 2 của SenShine Spa Danang (RoomId = 8)
INSERT INTO Bed (RoomId, BedNumber, StatusWorking) 
VALUES 
(8, N'Giường 1', 'INACTIVE'),
(8, N'Giường 2', 'ACTIVE');

-- Các giường cho Phòng Thư Giãn 1 của SenShine Spa Danang (RoomId = 9)
INSERT INTO Bed (RoomId, BedNumber, StatusWorking) 
VALUES 
(9, N'Giường 1', 'ACTIVE'),
(9, N'Giường 2', 'ACTIVE');

-- Các giường cho Phòng VIP 1 của SenShine Spa Hue (RoomId = 10)
INSERT INTO Bed (RoomId, BedNumber, StatusWorking) 
VALUES 
(10, N'Giường 1', 'ACTIVE'),
(10, N'Giường 2', 'INACTIVE');

-- Các giường cho Phòng VIP 2 của SenShine Spa Hue (RoomId = 11)
INSERT INTO Bed (RoomId, BedNumber, StatusWorking) 
VALUES 
(11, N'Giường 1', 'ACTIVE'),
(11, N'Giường 2', 'ACTIVE');

-- Các giường cho Phòng Thư Giãn 1 của SenShine Spa Hue (RoomId = 12)
INSERT INTO Bed (RoomId, BedNumber, StatusWorking) 
VALUES 
(12, N'Giường 1', 'INACTIVE'),
(12, N'Giường 2', 'ACTIVE');

-- Các giường cho Phòng VIP 1 của SenShine Spa Can Tho (RoomId = 13)
INSERT INTO Bed (RoomId, BedNumber, StatusWorking) 
VALUES 
(13, N'Giường 1', 'ACTIVE'),
(13, N'Giường 2', 'INACTIVE');

-- Các giường cho Phòng VIP 2 của SenShine Spa Can Tho (RoomId = 14)
INSERT INTO Bed (RoomId, BedNumber, StatusWorking) 
VALUES 
(14, N'Giường 1', 'ACTIVE'),
(14, N'Giường 2', 'ACTIVE');

-- Các giường cho Phòng Thư Giãn 1 của SenShine Spa Can Tho (RoomId = 15)
INSERT INTO Bed (RoomId, BedNumber, StatusWorking) 
VALUES 
(15, N'Giường 1', 'INACTIVE'),
(15, N'Giường 2', 'ACTIVE');

-- Chèn dịch vụ vào bảng Combo_Service cho từng combo
-- ComboId 1
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (1, 1); -- Massage Thư Giãn
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (1, 3); -- Xông Hơi

-- ComboId 2
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (2, 2); -- Chăm Sóc Da Mặt
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (2, 12); -- Dưỡng Da Mặt

-- ComboId 3
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (3, 8); -- Phục Hồi Cơ Bắp
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (3, 9); -- Massage Chân

-- ComboId 4
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (4, 6); -- Chăm Sóc Tóc
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (4, 17); -- Chăm Sóc Móng Tay

-- ComboId 5
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (5, 14); -- Massage Dầu
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (5, 22); -- Chăm Sóc Da Tay

-- ComboId 6
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (6, 13); -- Trị Liệu Ánh Sáng
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (6, 3); -- Xông Hơi

-- ComboId 7
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (7, 15); -- Thư Giãn Đầu
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (7, 16); -- Thư Giãn Cổ Vai

-- ComboId 8
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (8, 11); -- Massage Toàn Thân
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (8, 19); -- Chăm Sóc Da Toàn Thân

-- ComboId 9
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (9, 23); -- Tẩy Da Chết
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (9, 12); -- Dưỡng Da Mặt

-- ComboId 10
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (10, 22); -- Massage Hơi Nước
INSERT INTO [Combo_Service] (ComboId, ServiceId) VALUES (10, 21); -- Trị Liệu Tinh Dầu
INSERT INTO Product (ProductName, Price, Quantity, SpaId)
VALUES 
    (N'Kinh Nghiệm Massage Thư Giãn', 250000, 20, 1),
    (N'Kem Chăm Sóc Da Mặt', 300000, 15, 1),
    (N'Dầu Xông Hơi', 150000, 25, 1),
    (N'Tinh Dầu Thảo Dược', 400000, 10, 1),
    (N'Combo Thư Giãn Toàn Thân', 500000, 12, 1),
    (N'Shampoo Chăm Sóc Tóc', 200000, 18, 1),
    (N'Phấn Trang Điểm', 180000, 30, 1),
    (N'Gel Phục Hồi Cơ Bắp', 350000, 8, 1),
    (N'Dầu Massage Chân', 220000, 20, 1),
    (N'Serum Chăm Sóc Mắt', 250000, 15, 1),
    (N'Kem Dưỡng Da Toàn Thân', 400000, 10, 1),
    (N'Tinh Dầu Ánh Sáng', 350000, 12, 1),
    (N'Gel Thư Giãn Cổ Vai', 200000, 25, 1),
    (N'Scrub Tẩy Da Chết', 230000, 20, 1),
    (N'Kem Dưỡng Da Mặt', 270000, 15, 1),
    (N'Dầu Massage Thư Giãn', 300000, 10, 1),
    (N'Tinh Dầu Oxy', 320000, 8, 1),
    (N'Kem Chăm Sóc Da Mặt Cơ Bản', 200000, 20, 1),
    (N'Gel Thư Giãn Cơ Thể', 280000, 18, 1),
    (N'Chăm Sóc Móng Tay', 180000, 30, 1),
    (N'Chăm Sóc Móng Chân', 200000, 28, 1),
    (N'Kem Chăm Sóc Da Toàn Thân Nâng Cao', 500000, 12, 1),
    (N'Tinh Dầu Hơi Nước', 250000, 15, 1),
    (N'Kem Chăm Sóc Da Tay', 220000, 22, 1),
    (N'Gel Thư Giãn Đầu', 200000, 20, 1),
    (N'Kem Chăm Sóc Da Mặt Đặc Biệt', 350000, 12, 1),
    (N'Tinh Dầu Trị Liệu', 300000, 10, 1),
    (N'Dầu Massage Thể Thao', 350000, 8, 1),
    (N'Kem Chăm Sóc Da Mặt Chuyên Sâu', 400000, 10, 1),
    (N'Dầu Massage Hơi Nước', 220000, 20, 1),
    (N'Gel Thư Giãn Cơ Bắp Đặc Biệt', 350000, 10, 1),
    (N'Kem Chăm Sóc Da Toàn Thân Đặc Biệt', 500000, 8, 1),
    (N'Tinh Dầu Trị Liệu Định Kỳ', 300000, 12, 1);
INSERT INTO ProductImage (ProductId, ImageURL)
VALUES 
    (1, N'https://tse4.mm.bing.net/th?id=OIP.qVHZCrBQ9uOtTG_zxUM5HQHaD8&pid=Api&P=0&h=180'),
    (2, N'https://cdn.nhathuoclongchau.com.vn/unsafe/800x0/filters:quality(95)/https://cms-prod.s3-sgn09.fptcloud.com/bo_san_pham_cocoon_giup_cham_soc_da_toan_dien_moi_ngay_161378d071.jpg'),
    (3, N'https://cf.shopee.vn/file/22c7886cf91e0e30d1c9c7ed4e945fe2'),
    (4, N'https://cf.shopee.vn/file/6466959a65cf9f507e30e06aeb4cac75'),
    (6, N'https://down-vn.img.susercontent.com/file/vn-11134201-23030-477yaojt2cov87'),
    (8, N'https://bizweb.dktcdn.net/100/325/504/products/gel-phuc-hoi-da.jpg?v=1667200778917')
INSERT INTO Category (CategoryName)
VALUES 
    (N'Massage'),
    (N'Chăm Sóc Da'),
    (N'Xông Hơi'),
    (N'Triệu Liệu Thảo Dược'),
    (N'Thư Giãn Toàn Thân'),
    (N'Chăm Sóc Tóc'),
    (N'Diểm Trang'),
    (N'Phục Hồi Cơ Bắp'),
    (N'Chăm Sóc Mắt'),
    (N'Tẩy Da Chết'),
    (N'Dưỡng Da Mặt'),
    (N'Tinh Dầu'),
    (N'Chăm Sóc Móng Tay'),
    (N'Chăm Sóc Móng Chân'),
    (N'Chăm Sóc Da Toàn Thân'),
    (N'Triệu Liệu Đặc Biệt');
	INSERT INTO ProductCategories (ProductId, CategoryId)
VALUES 
    (1, 1),  -- Massage Thư Giãn thuộc loại Massage
    (2, 2),  -- Chăm Sóc Da Mặt thuộc loại Chăm Sóc Da
    (3, 3),  -- Xông Hơi thuộc loại Xông Hơi
    (4, 4),  -- Triệu Liệu Bằng Thảo Dược thuộc loại Triệu Liệu Thảo Dược
    (5, 5),  -- Thư Giãn Toàn Thân thuộc loại Thư Giãn Toàn Thân
    (6, 6),  -- Chăm Sóc Tóc thuộc loại Chăm Sóc Tóc
    (7, 7),  -- Điểm Trang thuộc loại Điểm Trang
    (8, 8),  -- Phục Hồi Cơ Bắp thuộc loại Phục Hồi Cơ Bắp
    (9, 1),  -- Massage Chân thuộc loại Massage
    (10, 2), -- Chăm Sóc Mắt thuộc loại Chăm Sóc Da
    (11, 2), -- Chăm Sóc Da Toàn Thân thuộc loại Chăm Sóc Da
    (12, 2), -- Triệu Liệu Ánh Sáng thuộc loại Chăm Sóc Da
    (13, 1), -- Thư Giãn Cổ Vai thuộc loại Massage
    (14, 2), -- Tẩy Da Chết thuộc loại Chăm Sóc Da
    (15, 2), -- Dưỡng Da Mặt thuộc loại Chăm Sóc Da
    (16, 1), -- Massage Dầu thuộc loại Massage
    (17, 2), -- Triệu Liệu Bằng Oxy thuộc loại Chăm Sóc Da
    (18, 2), -- Chăm Sóc Da Mặt Cơ Bản thuộc loại Chăm Sóc Da
    (19, 5), -- Thư Giãn Cơ Thể thuộc loại Thư Giãn Toàn Thân
    (20, 14), -- Chăm Sóc Móng Tay thuộc loại Chăm Sóc Móng Tay
    (21, 14), -- Chăm Sóc Móng Chân thuộc loại Chăm Sóc Móng Chân
    (22, 2), -- Chăm Sóc Da Toàn Thân Nâng Cao thuộc loại Chăm Sóc Da
    (23, 2), -- Triệu Liệu Hơi Nước thuộc loại Chăm Sóc Da
    (24, 2), -- Chăm Sóc Da Tay thuộc loại Chăm Sóc Da
    (25, 1), -- Thư Giãn Đầu thuộc loại Massage
    (26, 2), -- Chăm Sóc Da Mặt Đặc Biệt thuộc loại Chăm Sóc Da
    (27, 2), -- Triệu Liệu Tinh Dầu thuộc loại Chăm Sóc Da
    (28, 1), -- Massage Thể Thao thuộc loại Massage
    (29, 2), -- Chăm Sóc Da Mặt Chuyên Sâu thuộc loại Chăm Sóc Da
    (30, 1), -- Massage Hơi Nước thuộc loại Massage
    (31, 1), -- Thư Giãn Cơ Bắp Đặc Biệt thuộc loại Massage
    (32, 2), -- Chăm Sóc Da Toàn Thân Đặc Biệt thuộc loại Chăm Sóc Da
    (33, 2); -- Triệu Liệu Định Kỳ thuộc loại Chăm Sóc Da
	INSERT INTO News (Title, Cover, Content, PublishedDate)
VALUES 
    (N'Khuyến Mãi Đặc Biệt Tháng 8', 'https://tse4.mm.bing.net/th?id=OIP.huUziSx8yRen9AkNTFnFYQHaEH&pid=Api&P=0&h=180', N'Chúng tôi rất vui thông báo về chương trình khuyến mãi đặc biệt trong tháng 8 này. Đừng bỏ lỡ cơ hội nhận ưu đãi lớn!', GETDATE()),
    (N'Tin Tức Mới Nhất', 'https://tse4.mm.bing.net/th?id=OIP.huUziSx8yRen9AkNTFnFYQHaEH&pid=Api&P=0&h=180', N'Đọc tin tức mới nhất từ chúng tôi. Cập nhật những thông tin nóng hổi và sự kiện quan trọng.', GETDATE());
INSERT INTO WorkSchedules (EmployeeId, StartDateTime, EndDateTime, DayOfWeek)
VALUES 
    (3, '2024-08-22 09:00:00', '2024-08-22 17:00:00', N'Thursday'),  -- Ngày 22 tháng 8, 2024 (Thứ Năm)
    (3, '2024-08-23 09:00:00', '2024-08-23 17:00:00', N'Friday'),    -- Ngày 23 tháng 8, 2024 (Thứ Sáu)
    (3, '2024-08-26 09:00:00', '2024-08-26 17:00:00', N'Monday'),    -- Ngày 26 tháng 8, 2024 (Thứ Hai)
    (3, '2024-08-27 09:00:00', '2024-08-27 17:00:00', N'Tuesday');   -- Ngày 27 tháng 8, 2024 (Thứ Ba)
	INSERT INTO Promotions (SpaId, PromotionName, StartDate, EndDate, Description, DiscountPercentage) 
VALUES 
(1, N'Khuyến mãi Mùa Hè', '2024-06-01', '2024-06-30', N'Giảm giá 20% cho tất cả các dịch vụ spa trong tháng 6.', 20.00),
(1, N'Giảm giá Sinh Nhật', '2024-07-01', '2024-07-31', N'Giảm giá 15% cho dịch vụ spa nhân dịp sinh nhật của bạn.', 15.00),
(1, N'Khuyến mãi Thứ Sáu Đen', '2024-11-01', '2024-11-30', N'Giảm giá 25% cho các gói dịch vụ spa vào cuối tuần.', 25.00),
(2, N'Ưu Đãi Tháng Mười Hai', '2024-12-01', '2024-12-31', N'Giảm giá 30% cho các dịch vụ spa trong tháng 12.', 30.00),
(2, N'Khuyến Mãi Tết Nguyên Đán', '2024-01-01', '2024-01-31', N'Giảm giá 10% cho tất cả các dịch vụ spa nhân dịp Tết Nguyên Đán.', 10.00),
(2, N'Ưu Đãi Lễ Tình Nhân', '2024-02-01', '2024-02-14', N'Giảm giá 20% cho các dịch vụ spa cho cặp đôi nhân dịp lễ tình nhân.', 20.00),
(3, N'Khuyến Mãi Ngày Quốc Khánh', '2024-09-01', '2024-09-07', N'Giảm giá 18% cho tất cả các dịch vụ spa trong tuần Quốc Khánh.', 18.00),
(3, N'Khuyến Mãi Ngày Phụ Nữ', '2024-03-01', '2024-03-08', N'Giảm giá 25% cho các dịch vụ spa nhân dịp Ngày Quốc Tế Phụ Nữ.', 25.00),
(4, N'Ưu Đãi Mùa Xuân', '2024-03-15', '2024-04-15', N'Giảm giá 15% cho tất cả các dịch vụ spa trong mùa xuân.', 15.00),
(4, N'Khuyến Mãi Sinh Nhật Spa', '2024-08-01', '2024-08-31', N'Giảm giá 20% cho các dịch vụ spa nhân dịp sinh nhật của spa.', 20.00);
