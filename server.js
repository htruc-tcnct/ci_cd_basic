const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send(`
    <h1>Bài Thơ Chúc Em Yêu Ngủ Ngon</h1>
    <p>Chúc em ngủ ngon, ngọt ngào trong mộng mơ,</p>
    <p>Giấc mơ đẹp về anh, cho em yêu đêm trọn vẹn.</p>
    <p>Hãy để anh là người canh giấc ngủ em,</p>
    <p>Mong em mơ thấy anh trong từng giấc mơ.</p>
    <p>Ngủ đi em yêu, đêm nay tràn ngập yêu thương,</p>
    <p>Vì anh luôn bên cạnh, để giữ cho em giấc mơ yên bình.</p>
    <p>Chúc em ngủ ngon, mơ đẹp như cánh hoa hồng,</p>
    <p>Và tình yêu anh dành cho em sẽ mãi mãi không phai tàn.</p>
  `);
});

app.listen(port, () => {
  console.log(`App is running on http://localhost:${port}`);
});
