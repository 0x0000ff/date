local micro = import("micro")
local buffer = import("micro/buffer")

function insertDate(bp)
	local msgStart = buffer.Loc(bp.Buf:GetActiveCursor().Loc.X, bp.Buf:GetActiveCursor().Loc.y)
	bp.Buf:Insert(msgStart, os.date("<%d/%m/%y>"))
	return false
end

function insertDateWithDay(bp)
	local msgStart = buffer.Loc(bp.Buf:GetActiveCursor().Loc.X, bp.Buf:GetActiveCursor().Loc.y)
	bp.Buf:Insert(msgStart, os.date("<%d/%m/%y %a>"))
	return false
end

function insertTime(bp)
	local msgStart = buffer.Loc(bp.Buf:GetActiveCursor().Loc.X, bp.Buf:GetActiveCursor().Loc.y)
	bp.Buf:Insert(msgStart, os.date("<%H:%M>"));
	return false
end
