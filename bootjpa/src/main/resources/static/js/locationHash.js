var locationHash = {};

//location.hash에 저장된 페이지 번호 반환
locationHash.getPageNumByHash = function() {
    var pageHash = locationHash.getHashArr()[0];
    pageHash = (typeof pageHash === 'undefined') ? '' : pageHash;
    
    var hashPage = parseInt(pageHash.slice(4)); //location.hash에 저장된 페이지 번호
    hashPage = (isNaN(hashPage)) ? '1' : hashPage;
    return hashPage;
};

//location.hash에 저장된 값을 배열로 반환
locationHash.getHashArr = function() {
    var arr = location.hash.split('#').filter(function(el) {return el.length != 0});
    return arr;
}

//초기화
locationHash.init = function(callbackFunction) {
    if(typeof callbackFunction !== 'function') {
        alert('callbackFunction ['+callbackFunction+']은 함수가 아닙니다.');
        return false;
    }
    
    $(window).on('hashchange', function() {
        var hashPage = locationHash.getPageNumByHash(); //해시에 저장된 페이지 번호
        
        if(hashPage != null) {
            if(typeof callbackFunction == 'function') {
                callbackFunction(hashPage);
            }
        }
    });
};

//hash를 변경
locationHash.setHash = function(pageNum) {
    var hashString = '#page' + pageNum;
    
    for (var i=1; i < arguments.length; i++) {
        if(typeof arguments[i] !== 'undefined' && $.trim(arguments[i]) !== '') {
            hashString += '#'+arguments[i];
        }
    }
    
    window.location.hash = hashString;
}