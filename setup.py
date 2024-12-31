#!python3
from pathlib import Path
from sys import argv
from urllib.request import urlretrieve

DATAPACK_URL = r"https://github.com/hunterkyou/JIJIFUJIJI_Liars_Bar/releases/download/{}/Liar.s_Bar_for_Kyou_1.0.1_for_1.21.zip"
RESOURCEPACK_URL = r"https://github.com/hunterkyou/JIJIFUJIJI_Liars_Bar/releases/download/{}/Liar.s_Bar_for_Kyou_Resource_Pack_1.0_for_1.21.zip"

if __name__ == "__main__":
    if len(argv) != 2 and len(argv) != 3:
        print("Usage: python setup.py <minecraft_save_root> <release tag>")
        exit(1)
    if not Path(argv[1]).exists():
        print("save root does not exist")
        exit(1)
    RELEASE = "%E5%8F%91%E5%B8%83%E7%89%8801"
    if len(argv) == 3:
        print(f"from release {argv[2]}")
        RELEASE = argv[2]
    else:
        print("release unspecified, using release %E5%8F%91%E5%B8%83%E7%89%8801")

    # save file root
    save_root = Path(argv[1])
    # constants
    DATAPACK_ROOT = save_root / "datapacks"
    RESOURCEPACK_ROOT = save_root / "resourcepacks"
    if not DATAPACK_ROOT.exists():
        print(f"{DATAPACK_ROOT.absolute()} does not exist, creating")
        DATAPACK_ROOT.mkdir(parents=True)
    if not RESOURCEPACK_ROOT.exists():
        print(f"{RESOURCEPACK_ROOT.absolute()} does not exist, creating")
        RESOURCEPACK_ROOT.mkdir(parents=True)
    # download
    urlretrieve(
        DATAPACK_URL.format(RELEASE),
        DATAPACK_ROOT / "Liar.s_Bar_for_Kyou_1.0.1_for_1.21.zip",
    )
    print(
        f"downloaded reosurce pack file to {(DATAPACK_ROOT / 'Liar.s_Bar_for_Kyou_1.0.1_for_1.21.zip').absolute()}"
    )
    urlretrieve(
        RESOURCEPACK_URL.format(RELEASE),
        RESOURCEPACK_ROOT / "Liar.s_Bar_for_Kyou_Resource_Pack_1.0_for_1.21.zip",
    )
    print(
        f"downloaded reosurce pack file to {(RESOURCEPACK_ROOT / 'Liar.s_Bar_for_Kyou_Resource_Pack_1.0_for_1.21.zip').absolute()}"
    )
