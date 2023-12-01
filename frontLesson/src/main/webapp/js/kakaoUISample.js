/**
 * 
 */
 const testKakao=()=>{
	// 초창기 데이터api가 xml만 제공했기 때문에 XML이 이름에 붙어있음
	const xhr = new XMLHttpRequest()
	
	// 요청 파라미터를 QueryString 즉 하나의 문자열로 만들기
	let query = document.getElementById('query').value
	let page = document.getElementById('pageno').value
	let size = document.getElementById('size').value
	let sort = document.getElementById('accuracy').checked	// 최신순 : recency, 정확도순 : accuracy
	if(sort)
	sort='accuracy'
	else
	sort='receny'
	
	// 요청 URL을 설정 : 메소드 방식 GET(조회), POST(저장)
	xhr.open('GET', `https://dapi.kakao.com/v2/search/vclip?query=${query}&sort=${sort}&page=${page}&size=${size}` )
	// 요청헤더를 추가. 카카오API에서 정해진내용. 인증과 관련된 항목
	xhr.setRequestHeader('Authorization','KakaoAK c6dd2271379378fd68963521f6c489bc')	
	// 요청을 보내는 메소드. 
	xhr.send()
	
	let result=''
	// onload는 응답이 오면 발생하는 이벤트. 이벤트에 대한 처리함수를 정의합니다.
	xhr.onload=function(){
		// 요청 처리 결과에 대한 상태 코드 값은 status property로 확인
		if(xhr.status==200){
			alert('kakao 검색 응답을 받았습니다.')
			// xhr.response는 응답으로 받은 내용을 저장하는 xhr의 property
			// xhr.response는 json 문자열. 
			let $response = JSON.parse(xhr.response)	// json문자열을 자바스크립트 객체로 변환
			console.log('응답받은 전체 값 : ')
			console.log($response.meta.total_count)
			result = $response.documents	// 객체의 document property만 변수에 저장
		}// if
		
		console.log('콘솔에 결과 출력') 	
		console.log(result) 	// 콘솔에 출력
		// 총 조회 검색건수 가져오기
		
		
		// result를 화면에 목록으로 보여주기.
		// item 매개변수는 배열 요소를 순차적으로 저장. 함수 호출
		document.getElementById('list').innerHTML=''
		result.forEach((item)=>{
			const $ul = document.createElement('ul')
			const temp = `
						<li>${item.title}</li>
						<li>${item.author}</li>
						<li>${item.datetime}</li>
						<li>${item.play_time}</li>
						<li>${item.thumbnail}</li>
						<li>
							<a href='${item.url}' target='_blank'>
								<img src='${item.thumbnail}' width='200px'></a>
						</li>
						`
						$ul.innerHTML=temp
						document.getElementById('list').appendChild($ul)
			
		document.getElementById('total_count').innerHTML=$response.meta.total_count
		})
		
		
		
	}	// xhr.onload function 
}// testKakao
document.getElementById('search').addEventListener('click',testKakao)
 