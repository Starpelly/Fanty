using System.Collections;
using Bon;

namespace FantyEngine;

[BonTarget]
public class Sprite
{
	public int FPS = 30;

	public SpriteFrame[] Frames ~ if (_ != null) DeleteContainerAndItems!(_);

	public CollisionMask CollisionMask;

	[BonIgnore]
	public Vector2Int Size = .(64, 64);
}

[BonTarget]
public struct CollisionMask
{
	public Vector4 Rect;
}

[BonTarget]
public class SpriteFrame
{
	public Rectangle TextureRegion;
	public int Length = 1;

	[BonIgnore]
	public Vector2Int TexturePageCoordinates = .();
}