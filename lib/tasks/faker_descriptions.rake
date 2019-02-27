namespace :db do
  task faker_descriptions: :environment do
    puts "Create Description"

    # North Products
    Description.create!(
      product_id: 1,
      content: "Khô Trâu ngon ngọt tự nhiên. Hàm lượng dinh dưỡng cao Ăn khô Trâu tốt cho sức khỏe. Thích hợp cả người bị béo phì, cao huyết áp và một số bệnh liên quan đến tim mạch Làm thủ công - Gia Truyền - Đảm bảo an toàn. Giao hàng thu tiền tận nơi toàn quốc",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 2,
      content: "Giàu chất dinh dưỡng: Profit, gluxit, lượng calo cao, các khoáng chất như: Ca, P, Fe, các vitamin B1, B2, C...Sản phẩm được chế biến bằng 
      nguyên liệu chọn lọc kỹ không sử dụng hoá chất và mỡ động vật. Hương vị thơm ngon đã và đang được hầu hết người tiêu dùng bình chọn.",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 3,
      content: "Đến với nơi đây thì chắc hẳn ai cũng thưởng thức món su su  bởi lẽ ngọn su su ở đây rất đặc biệt. 
      Ngọn su su ăn giọt hơn, giòn hơn ăn có vị rất đặc trưng. Phải chăng su su ở đây được tắm sương trời, mây núi nên vị cũng đặc biệt hơn.",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 4,
      content: "Đặc sản măng khô tây bắc – Hương vị núi rừng Măng khô chứa nhiều chất cần thiết cho cơ thể chúng ta, theo như y học truyền 
      thống măng có vị ngọt hơi đắng, tính hơi hàn có thể hạ khí, thanh nhiệt, giải độc, thông lợi…",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 5,
      content: "Chè được hái bằng tay trên đồi sau nhà vào sáng sớm khi còn đọng sương, kĩ thuật lấy hương 100% tự nhiên đảm bảo chè có hương 
      vị đặc trưng thơm ngon của chè Thái Nguyên và tốt cho sức khỏe người uống trà.",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 5,
      content: "Chè được hái bằng tay trên đồi sau nhà vào sáng sớm khi còn đọng sương, kĩ thuật lấy hương 100% tự nhiên đảm bảo chè có hương 
      vị đặc trưng thơm ngon của chè Thái Nguyên và tốt cho sức khỏe người uống trà.",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 6,
      content: "Gạo nếp nương Điện Biên nổi tiếng khắp cả nước. Gạo nếp nó có một mùi thơm rất đặc trưng. Ở các vùng quê nước ta nếp hương được đặc biệt quan 
      tâm vì nó có mùi rất thơm. Gạo nếp thường được dùng trong những dịp đặc biệt như (ma chay, cưới xin, giỗ chạp..). gạo nếp nương Điện Biên được khí hậu 
      phù hợp nên nó có đặc điểm hạt to, hạt trong, hạt đục, không bị pha trộn. Sau khi ngâm nước xong, hạt gạo trong đều",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 7,
      content: "Bánh đa Kế là một món ăn bình dị, dân dã, chứa đựng trong đó bao hương vị, đậm đà quê Bắc Giang. Những chiếc bánh đa với hình yên ngựa vàng bóng, 
      vị thơm, béo của vừng đen, vị bùi bùi của lạc, vị thơm nhè nhẹ của gạo hòa lẫn với khoai lang, vị đậm đà của muối tinh... đã trở thành món quà không thể 
      thiếu đối với du khách.",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 8,
      content: "Lạp sườn Fansipan được chế biền hoàn toàn bằng phương thức truyền thống nhân lạp sườn được làm từ thịt nửa lạc nửa mỡ kết hợp cùng các gia vị 
      của núi rừng tây bắc, sau khi sơ chế lạp sườn được đưa vào trong lò được để hun khói, việc đưa vào lò giúp giữ nhiệt, giữ khói tốt hơn.",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 9,
      content: "Bài thuốc tắm của người Dao đỏ rất nổi tiếng, nhất là khi đi du lịch Sapa bạn sẽ thấy nhiều biển hiệu quảng cáo tắm lá người dao đỏ, tác dụng rất 
      tốt cho sức khỏe. Và bất kỳ khi nào làm việc nhiều, thấy cơ thể mỏi mệt, thời tiết thay đổi, nhức đầu, khản cổ, đi đường xa, đau chân tay... đều tắm lá thuốc.",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 10,
      content: "Sản phẩm được sản xuất theo phương pháp sấy gia nhiệt: Những miếng mít được chọn lọc và đưa vào máy sấy và được sấy ở nhiệt độ 50 - 70 độ C làm 
      cho sản phẩm như là được phơi sấy trong môi trường tự nhiên đảm bảo sản phẩm vẫn giữ được hương vị tự nhiên của mình mà lại đảm bảo an toàn vệ sinh thực phẩm.",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )

    #Central Products
    Description.create!(
      product_id: 11,
      content: "Đến thăm vùng đất Hà Tĩnh, ngoài thưởng thức những món ngon nổi tiếng như ram bánh mướt, bánh bèo, gỏi cá đục, bánh đa vừng... du khách còn bị níu 
      chân bởi một đặc sản dân dã khác, đó là kẹo cu đơ.",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 12,
      content: "Giá trị dinh dưỡng trong sá sùng rất cao. Có thể chế biến nhiều món ăn khác nhau nên thời gian gần đây, sá sùng được nhiều người dân tìm mua",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 13,
      content: "Đặc sản miền trung khô gà xé cay được chế biến từ thịt gà, tẩm ướp gia vị vừa dùng, thưởng thức chung với cơm, làm mồi nhậu",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 14,
      content: "Bánh tráng dừa luôn có mặt trong hầu hết những bữa ăn và tiệc tùng của người Bình Định bản xứ hay người Bình Định xa quê. 
      Xứ nẫu luôn tự hào có món bánh tráng dừa nướng góp phần làm phong phú nền ẩm thực Việt Nam ta",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 15,
      content: "Hà Thủ Ô giúp điều trị thiếu máu biểu hiện như da nhợt nhạt, hoa mắt, chóng mặt, mất ngủ, sớm bạc tóc, 
      đau và yếu vùng lưng và đầu gối: Dùng Hà thủ ô với Sinh địa hoàng, Nữ trinh tử, Câu kỷ tử, Thỏ ti tử và Tang kí sinh",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 16,
      content: "Tóm chua nõn Thoòng huong Huế Tóm lam 2 lớp toan tôm từ trong ra ngoài Kẹp với dưa giá ăn với thịt luộc cơm nóng tuyệt vời",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 17,
      content: "Hạt sen Huế đuọec lấy tim ra và phơi khô lên  Sen ăn rất mát cơ thể 1Kg sen khô rất nhiều ",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )

    #South Products
    Description.create!(
      product_id: 18,
      content: "Muối tôm Tây Ninh là loại gia vị đặc biệt chuyên để chấm hoa quả, nổi tiếng khắp mọi miền đất nước, 
      được nhiều du khách mua về làm quà khi đến đây.",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 19,
      content: "Thèo lèo quen thuộc với nguyên liệu chính được làm từ đậu phộng trộn út mạch nha tạo nên món ăn thơm ngon, 
      giòn tan để mua về làm quà cho bạn bè, người thân",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 20,
      content: "Được rất nhiều du khách mua về làm quà do món ăn có hương vị lạ miệng, hấp dẫn mà bất cứ ai đến Tây Ninh đều phải thử một lần.",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 21,
      content: "Với vị chua ngọt đậm đà thơm ngon mùi vị của trái nho tự nhiên, mật nho Phan Rang được dùng chung với đá lạnh, 
      rất thích hợp để giải khát trong mùa hè và lễ Tết, nên được nhiều du khách lựa chọn.",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 22,
      content: "Bánh tét lá cẩm có vị béo ngậy của nhân làm từ thịt, nước cốt dừa và đậu xanh, bên ngoài là lớp nếp màu tím của lá cẩm trông rất bắt mắt",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 23,
      content: "Bạn có thể tìm thấy loại bánh nổi tiếng này được bày bán khá nhiều dọc theo trục đường chính các tỉnh miền tây về Sài Gòn",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
    Description.create!(
      product_id: 24,
      content: "Xứ dừa Bến Tre luôn luôn nổi tiếng với những đặc sản không chỉ ngon mà còn nổ dưỡng. Đặc sản Miền Tây chúng tôi xin hân hạnh 
      giới thiệu tới quý khách sản phẩm Rượu Dừa Bến Tre.",
      ingredient: "Thanh phan",
      processing: "Che bien",
      usage: "Cach su dung",
      transportation: "Van chuyen",
      expiry_date: "01/01/2020",
      manufacturing_date: "01/01/2019",
      weight: 0.5
    )
  end
end
