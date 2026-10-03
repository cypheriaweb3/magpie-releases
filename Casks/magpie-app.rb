cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.777"
  sha256 arm:   "8ea38561c0ed4dcf0b24736c1d2d2db74fb9fabe982ca3d3e440311623bfc9cb",
         intel: "1fbabdc8ad87c1050b360ae959b42e4b382f05dff7a6e51b23f8d514476f44ec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
