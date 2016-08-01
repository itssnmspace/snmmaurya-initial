var HOLACHEFPLATFORMJS = HOLACHEFPLATFORMJS || {};
HOLACHEFPLATFORMJS = (function($, window, document, holachef){
  holachef.platforms ={
    android: function(){
      return navigator.userAgent.match(/Android/i);
    },
    iOS: function(){
      return navigator.userAgent.match(/iPhone|iPad|iPod/i);
    },
    windows: function(){
      return /IEMobile/i.test(navigator.userAgent);
    },
    blackBerry: function(){
      return /BlackBerry/i.test(navigator.userAgent);
    },
    isMobile: function(){
      return /Android|IEMobile|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent);
    }
  };
  return holachef;
})(jQuery, this, this.document, HOLACHEFPLATFORMJS);