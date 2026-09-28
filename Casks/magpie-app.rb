cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.289"
  sha256 arm:   "df3d2359eb94c96beb6966937a59817fac62e884d0d08451efe94fcdeb9bcbef",
         intel: "b0212677f0fadbefc1e0dd0e163bc42299dbefe688b868dd2edb098e4530da74"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
