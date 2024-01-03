drop database if exists book_manage;
create database if not exists book_manage;
use book_manage;

create table book_info(
	id_sach int primary key auto_increment,
    ma_san_pham varchar(100) not null,
    gia double,
    so_luong int,
    hinh_anh text,
    mo_ta text,
    id_the_loai int,
    id_tac_gia int
);
-- Trinh thám
-- 37. Dan Brown
-- 38. Miyuki Miyabe
-- 39. Yokomizo Seishi
-- 40. Minette Walters
-- 41. Yusuke Kishi

insert into book_info(ma_san_pham, gia, so_luong, hinh_anh, mo_ta, id_the_loai, id_tac_gia)
values('Thiên Thần Và Ác Quỷ',  239000, 20, 'https://salt.tikicdn.com/cache/w1200/ts/product/70/25/41/034b7f4e2706fedb8f94406bc9b1d20e.jpg',
'Robert Langdon, giáo sư biểu tượng học của Harvard, được bí mật mời tới Trung tâm nghiên cứu Hạt nhân châu Âu - cơ quan nghiên cứu khoa học lớn nhất thế giới để làm sáng tỏ cái chết của nhà vật lý học Leonardo Vetra. 
Biểu tượng bí ẩn được đóng dấu sắt nung trên ngực thi thể đưa đến một kết luận duy nhất: Hung thủ chính là Illuminati - một hội kín tưởng chừng đã tàn lụi từ 400 năm trước. 
Dường như hội kín vô cùng quyền lực này đã trở lại để tiếp tục cuộc báo thù nhằm vào Nhà thờ Công giáo, kẻ thù truyền kiếp của mình.',1, 37);

insert into book_info(ma_san_pham, gia, so_luong, hinh_anh, mo_ta, id_the_loai, id_tac_gia)
values('Kasha', 109000, 20, 'https://down-vn.img.susercontent.com/file/2b9a43b51d9f2a9262e7ca81efd4caf6',
'KASHA kết hợp cả hai ý tưởng này, kể về một thứ yêu quái mang dáng hình đàn bà, chuyên vun xới đời mình trên xác tàn của kẻ khác. Chỉ chăm chăm nhảy vào cỗ xe lửa của thi hài, mà không hay mình đang thay thi hài đến nơi ngục hình chịu tội.', 1, 38);

insert into book_info(ma_san_pham, gia, so_luong, hinh_anh, mo_ta, id_the_loai, id_tac_gia)
values('Thôn Tám Mộ', 135000, 30, 'https://product.hstatic.net/200000287623/product/thon_tam_mo_-_bia_1_2e377c88c426414fa1abc4e29a91df0a_master.jpg',
'Kết thúc Thế chiến 2, Tatsuya xuất ngũ về lại thành phố quê hương, không còn người thân, không xu dính túi, công việc bấp bênh. Bất thần anh nghe trên đài phát tin gia đình giàu có thất lạc từ lâu đang tìm mình.
Tatsuya bèn đến nơi gửi tin, gặp được người thân đầu tiên chừng vài phút thì người này mất mạng trước mắt anh.
Tatsuya về thôn làng mình chào đời, sang hôm sau thì người thân thứ hai mất mạng trước mắt anh.
Sau đó, cứ một vài hôm lại thêm một người mất mạng trước mắt Tatsuya. Anh nghiễm nhiên biến thành kẻ tình nghi lớn nhất, thành kẻ gieo rắc tai ương trong thôn. Tatsuya đi từ ngạc nhiên đến kinh hoàng, khi phát hiện ra đây là nhân quả của tội nghiệt do tổ tiên mình để lại. 
Chẳng là gần bốn trăm năm trước, có tám samurai mang vàng đến đây lánh nạn đã bị tổ tiên anh dẫn thôn dân đến bao vây hạ sát. Trước khi bị chặt đầu, vị thủ lĩnh samurai đã nguyền rằng sẽ ếm nguyền bảy đời cho thôn này không thể sống yên ổn.
Từ đó cho đến tận đời cha anh, mỗi thế hệ trong thôn đều xảy ra một vụ thảm sát, số nạn nhân đều là bội số của 8, như thể lấy mạng để đền tội cho tám samurai chết oan thuở nào.', 1, 39);

insert into book_info(ma_san_pham, gia, so_luong, hinh_anh, mo_ta, id_the_loai, id_tac_gia)
values('Kẻ Nặn Sáp', 115000, 20, 'https://product.hstatic.net/200000287623/product/ke-nan-sap_f80570308a5142ffa60a6586e1102a96_master.jpg',
'Mẹ tôi luôn nói, không bao giờ được tin một người đàn ông có dái tai nằm thấp hơn khuôn miệng. Đó là dấu hiệu của bọn tội phạm. Nhìn ông ta xem.
Rất nhiều nhận định nghe đáng ngờ và đầy cảm tính như thế lại tồn tại sắt đá khắp câu chuyện này, giăng lên mê lộ khiến không những độc giả mà chính các nhân vật cũng phải bối rối và lạc đường trên hành trình đi tìm thật-giả.
Cách đây bốn năm, một cô gái trẻ bị kết án sát nhân, khi người ta tìm thấy thi thể mẹ và em cô giữa thảm máu lênh láng trên sàn bếp, được chặt thành từng mảnh rồi ráp lại, nhưng có lẽ do loạn trí, một số mảnh đã bị ráp nhầm từ người nọ sang người kia.', 1, 40);

insert into book_info(ma_san_pham, gia, so_luong, hinh_anh, mo_ta, id_the_loai, id_tac_gia)
values('Mê Cung Đỏ',99000,20,'https://salt.tikicdn.com/cache/w400/media/catalog/product/b/i/bia-me-cung-do.u547.d20161201.t084238.859110.jpg',
'Con người ta luôn luôn đòi hỏi những câu chuyện.
Trong đó, câu chuyện miêu tả cái chết thường gây kích thích hơn cả.
Anh thất nghiệp, lang thang tìm việc, đi phỏng vấn rồi một ngày nọ thức dậy ở nơi xa lạ.
Khung cảnh kì quái với núi đá dày đặc những khía ngang thân, không gian thảy đều nhuốm đỏ, lửa đỏ, chiều đỏ, đất đỏ, đến núi đá cũng đỏ lòm.
Từ máy trò chơi ai đó để sẵn bên cạnh, anh nhận được thông điệp, “ Chào mừng đến với mê cung sao Hỏa. Những người đến đích và an toàn thoát khỏi mê cung sẽ nhận được tiền thưởng và trở về Trái Đất. Trò chơi bắt đầu!”
Tin vui là không chỉ có mình anh gặp tình cảnh tương tự, còn tám người nữa cũng tỉnh dậy sau một giấc ngủ kì quặc và được đưa tới đây. 
Bọn họ bị cô lập giữa thiên nhiên hoang vắng này và muốn thoát ra, họ buộc phải tham gia trò chơi của kẻ giấu mặt. 
Ban đầu chẳng ai hay biết, muốn trở về được, họ phải tiêu diệt người chơi khác để bản thân trở thành kẻ duy nhất sống sót. 
Đáp án tàn khốc ấy sẽ từ từ hé lộ sau mỗi chặng hoàn thành nhiệm vụ.', 1, 41);

-- Kinh điển
-- 42. Toni Morrison
-- 43. Louisa May Alcott
-- 44. Jerome David Salinger
-- 45. ALAIN FOURNIER

insert into book_info(ma_san_pham, gia, so_luong, hinh_anh, mo_ta, id_the_loai, id_tac_gia)
values('Yêu Dấu', 129000, 20, 'https://salt.tikicdn.com/cache/w400/ts/product/54/69/04/7e53bdabd8a97646b0ca7795bd482368.jpg',
'Nhìn thẳng vào vực thẳm của chế độ nô lệ, cuốn tiểu thuyết xuất sắc này đã biến lịch sử thành một câu chuyện dữ dội và rúng động. 
Seth, nữ nhân vật chính, sinh ra là nô lệ, bỏ trốn tới Ohio, nhưng mười tám năm sau chị vẫn chưa được tự do. 
Chị vẫn còn quá nhiều ký ức về Mái Ấm, về cái nơi tươi đẹp đã từng xảy ra biết bao chuyện kinh hoàng. 
Và ngôi nhà mới của chị bị ám bởi một hồn ma, hồn ma của chính đứa con chị đã giết, đứa trẻ đã chết mà chưa kịp có tên, trên mộ bia chỉ đề Yêu Dấu.', 2, 42);

insert into book_info(ma_san_pham, gia, so_luong, hinh_anh, mo_ta, id_the_loai, id_tac_gia)
values('NHỮNG CÔ GÁI NHỎ', 259000, 29, 'https://down-vn.img.susercontent.com/file/60fe234583d1e259d8dd8d1a6e2ed565',
'Bốn chị em của March không thể khác biệt hơn: Meg, con cả, ngoan ngoãn và kiên nhẫn; Jo thích phiêu lưu, với ước mơ trở thành một nhà văn lớn; nhút nhát, âm nhạc Beth là người hòa bình; và Amy cứng đầu thích những điều tốt đẹp hơn trong cuộc sống.
 Họ có thể không phải lúc nào cũng hòa thuận với nhau, nhưng với việc cha bỏ đi trong Nội chiến và mẹ họ phải vật lộn kiếm sống, các chị em chưa bao giờ cần nhau hơn. 
 Cùng nhau, các cô gái điều lớn lên - từ tình yêu đầu đời đến sự ganh đua của anh chị em, mất mát và hôn nhân. 
Bất cứ điều gì xảy ra theo cách của họ, họ biết họ có thể dựa vào nhau.', 2, 43);

insert into book_info(ma_san_pham, gia, so_luong, hinh_anh, mo_ta, id_the_loai, id_tac_gia)
values('Bắt trẻ đồng xanh', 99000, 20, 'https://salt.tikicdn.com/cache/w400/ts/product/19/64/ef/974ca243b72d5ffe201e3a74bbe61e8c.jpg',
'Holden Caulfield, 17 tuổi, đã từng bị đuổi học khỏi ba trường, và trường dự bị đại học Pencey Prep là ngôi trường thứ tư. Và rôi cậu lại trượt 4 trên 5 môn học và nhận được thông báo đuổi học.
 Câu chuyện kể về chuỗi ngày tiếp theo sau đó của Holden, với ánh nhìn cay độc, giễu cợt vào một cuộc đời tẻ nhạt, xấu xa, trụy lạc và vô phương hướng của một thanh niên trẻ.,', 2, 44);
 
insert into book_info(ma_san_pham, gia, so_luong, hinh_anh, mo_ta, id_the_loai, id_tac_gia)
values('ANH MEAULNES', 116000, 20, 'https://bizweb.dktcdn.net/thumb/large/100/363/455/products/anhmeaulnes01.jpg?v=1695032673567',
'Kể về câu chuyện của những chàng trai trẻ tuổi trên hành trình khám phá cuộc đời, cuốn tiểu thuyết khai thác đề tài về sự chênh lệch và đối lập giữa sự vô hạn của ước mơ cùng sự hữu hạn của đời người. 
Xuyên suốt cả thiên truyện, Alain-Fournier đã khắc họa nỗi khắc khoải của con người trong cuộc đụng độ chênh lệch với định mệnh.', 2, 45);

-- Self Help
-- 46. Mark Manson
-- 47. Margie Warpell
-- 48. Dale Carnegie
insert into book_info(ma_san_pham, gia, so_luong, hinh_anh, mo_ta, id_the_loai, id_tac_gia)
values('Nghệ thuật tinh tế của việc đếch quan tâm',119000, 30,'https://salt.tikicdn.com/cache/w400/ts/product/e4/9b/b7/a8b3f9dfdd6a8eef63f20b7646c976d8.jpg',
'Trong cuộc đời mình, tôi đã từng quan tâm về quá nhiều thứ. Đồng thời tôi cũng "đếch" quan tâm tới nhiều người, nhiều điều khác nữa. Và giống như con đường chưa từng được khai phá, chính những điều tôi chẳng thèm quan tâm ấy lại tạo nên sự khác biệt. 
Chìa khóa của một cuộc sống tốt đẹp không phải là quan tâm nhiều hơn, mà là quan tâm ít đi, chỉ quan tâm tới điều gì là thật, gần gũi và thực sự quan trọng.
Cuốn này sẽ không dạy bạn cách để đạt tới điều này hay điều nọ, mà là làm thế nào để vứt bớt và buông bỏ Nó sẽ hướng dẫn bạn cách nhắm mắt lại và tin rằng bạn có thể ngã ngửa ra đằng sau mà vẫn ổn. Nó sẽ dạy bạn: ĐỪNG CỐ', 3, 46);

insert into book_info(ma_san_pham, gia, so_luong, hinh_anh, mo_ta, id_the_loai, id_tac_gia)
values('Hãy Tin Vào Chính Mình! - Sức Mạnh Thay Đổi Cuộc Đời Từ Việc Tin Tưởng Bản Thân', 150000, 10, 'https://bizweb.dktcdn.net/thumb/grande/100/418/570/products/hay-tin-vao-chinh-minh-ok.jpg?v=1623210633067',
'Cuốn sách này sẽ giúp bạn vượt lên những thách thức lớn nhất và tin tưởng bản thân để trở thành người mà bạn luôn luôn biết rằng bạn có thể trở thành!', 3, 47);

insert into book_info(ma_san_pham, gia, so_luong, hinh_anh, mo_ta, id_the_loai, id_tac_gia)
values('Đắc Nhân Tâm', 75000, 20, 'https://tramsach.vn/wp-content/uploads/2021/06/12-e1653631534295.png',
'Là quyển sách đầu tiên có ảnh hưởng làm thay đổi cuộc đời của hàng triệu người trên thế giới, Đắc Nhân Tâm là cuốn sách đem lại những giá trị tuyệt vời cho người đọc, bao gồm những lời khuyên cực kì bổ ích về cách ứng xử trong cuộc sống hàng ngày. Sức lan toả của quyển sách vô cùng rộng lớn – với nhiều tầng lớp, đối tượng.', 3, 48);