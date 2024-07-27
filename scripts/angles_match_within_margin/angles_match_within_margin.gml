// Function to check if two angles match within a margin
function angles_match_within_margin(_angle1, _angle2, _margin) {
    var _diff = abs(angle_difference(_angle1, _angle2));
    return (_diff <= _margin);
}