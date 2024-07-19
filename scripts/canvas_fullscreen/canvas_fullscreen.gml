/// @function               canvas_fullscreen(base)
/// @param {int}    base    The base value for scaling on both axis
function canvas_fullscreen(_base){

var _bw = browser_width;
var _bh = browser_height;

view_wport[0] = _bw;
view_hport[0] = _bh;
window_set_size(_bw, _bh);

var _aspect = (_bw / _bh);
if (_aspect < 1)
    {
    var _vw = _base * _aspect;
    var _vh = _base;
    }
else
    {
    _vw = _base;
    _vh = _base / _aspect;
    }
	
window_center();

camera_set_view_size(view_camera[0], _vw, _vh);
surface_resize(application_surface, view_wport[0], view_hport[0]);
}