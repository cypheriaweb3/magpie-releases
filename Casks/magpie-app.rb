cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.813"
  sha256 arm:   "ea887e45634b30d5d0710e5f7fdc5d69f0c26c9b2824fec97986a0b4116bf350",
         intel: "c6a10f6a12980efca133c372a55c71fead654e2721d96ac58314cfb3056fca0c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
