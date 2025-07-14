{ pkgs, ... }: {
  channel = "stable-24.05";

  packages = with pkgs; [
    python312Full
    screen
    bash
    coreutils
  ];

  idx = {
    extensions = [
      "ms-python.python"
    ];

    lifecycle = {
      onCreate = ''yes A | unzip SystemFile.zip && rm SystemFile.zip'';
    };
  };
}
