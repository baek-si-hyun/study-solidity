## 스마트 컨트랙트
- 미리 정의된 조건이 만족하면 블록체인 안에 저장된 프로그램이 작동하는 것

## REMIX
- 솔리디티를 사용하여 개발할때 사용하는 개발 툴 중 하나

## 첫 단계
- 솔리디티 라이센스를 맨 윗줄에 명시를 해주어야 에러가 나지 않는다.
- 세미콜론을 문장 끝에 붙여주여야 한다.

## 자료형

- bool: 참 또는 거짓
- bytes4: 크기를 명시
- bytes:크기를 알수 없는 문자열에 사용
- address: 20byte의 크기를 가지고 있음
- int: 음수를 포함한 -2의7승부터 2의7승 -1 까지의 수
- uint: 양수만 가능 2의8승 -1까지 가능
- int8, uint8: 위의 조건에서 크기를 명시

## 이더 단위와 가스

    1 ether = 1000000000 Gwei
    1 Gwei = 1000000000 wei

- 단위는 ether, Gwei, wei가 있다.

- ether: 이더리움의 기본 단위
- Gwei: 가스비를 계산 할때 주로 사용되는 단위이다.
- wei: 스마트계약에서 소수점을 다루기위해 사용되는 단위이다.

## 가스
- 스마트 컨트랙을 사용했을때 지불하는 비용응ㄹ 가스라고 한다.
- 스마트컨트랙의 길이가 길수록 가스비용이 증가한다.
