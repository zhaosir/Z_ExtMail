var chkupdate_lang = [];

chkupdate_lang['en_US'] = [];
chkupdate_lang['en_US']['loading'] = "Loading...";

chkupdate_lang['zh_CN'] = [];
chkupdate_lang['zh_CN']['loading'] = "&#36733;&#20837;&#20013;&#8230;&#8230;";

chkupdate_lang['zh_TW'] = [];
chkupdate_lang['zh_TW']['loading'] = "&#36617;&#20837;&#20013;&#8230;&#8230;";

function get_update(version, software) {
    var chkupdate_container = document.getElementById('chkupdate_container');
    chkupdate_container.innerHTML = ['<div id="chkupdate_hint">', chkupdate_lang[userlang]['loading'], '</div>'].join('');
    if (chkupdate_rpc != null) {
        window.setTimeout(["chkupdate_rpc.get_update('", userlang, "', '", version, "', '", software, "', get_chkupdate_callback);"].join(''), 100);
    }
    else {
        window.setTimeout(["get_update('", version, "', '", software, "');"].join(''), 100);
    }
}

function get_chkupdate_callback(result) {
    if (result instanceof PHPRPC_Error) {
        var chkupdate_hint = document.getElementById('chkupdate_hint');
        chkupdate_hint.innerHTML = '<span style="color: red">' + result.errstr + '</span>';
    }
    else {
        var chkupdate_container = document.getElementById('chkupdate_container');
        chkupdate_container.innerHTML = result;
        set_cookie('rpc_chkupdate', result, 3*3600*1000);
    }
    if (result == null || result == '' || result == 'no update') {
	return;
    }
    document.getElementById('chkupdate_container').style.display = 'block';
}

function chkupdate_init(version, software) {
    var chkupdate_container = document.getElementById('chkupdate_container');
    var _hint = get_cookie('rpc_chkupdate');
    var _ver = get_cookie('rpc_webmail_ver');

    if (!rpc_plg_enable('chkupdate')) {
        return;
    }
    if (_ver == null || _ver != version) {
        get_update(version, software);
	set_cookie('rpc_webmail_ver', version, 3*3600*1000);
    } else if (_hint == null) {
        get_update(version, software);
        set_cookie('rpc_webmail_ver', version, 3*3600*1000);
    } else {
	if (_hint == null || _hint == '' || _hint == 'no update') {
	    return;
        }
        chkupdate_container.innerHTML = _hint;
	document.getElementById('chkupdate_container').style.display = 'block';
    }
}
