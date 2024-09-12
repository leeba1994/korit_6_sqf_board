import React from 'react';
import { Link } from 'react-router-dom';
import { IoMdArrowDropleft, IoMdArrowDropright } from "react-icons/io";
import ReactPaginate from 'react-paginate';

function NumberBoardListPage(props) {
    return (
        <div>
            <Link to={"/"} ><h1>사이트 로고</h1></Link>
            <table>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                        <th>추천</th>
                        <th>조회</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>asd</td>
                        <td>test1234</td>
                        <td>2024.09.12 (오전)11:08:00</td>
                        <td>21</td>
                        <td>10000</td>
                    </tr>
                </tbody>
            </table>
            <div>
                <ReactPaginate 
                    breakLabel={"..."}
                    previousLabel={<><IoMdArrowDropleft />Previous</>}
                    nextLabel={<><IoMdArrowDropright />Next</>}

                />
            </div>
        </div>
    );
}

export default NumberBoardListPage;