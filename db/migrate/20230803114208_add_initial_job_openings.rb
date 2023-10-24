class AddInitialJobOpenings < ActiveRecord::Migration[7.0]
  def up
    JobOpening.create!([
        {
            title: "React Native Developer",
            one_line_description: "We are looking for React Native Developers having good experience in creating excellent applications for Android and iOS platforms.",
            employment_type: "Full Time job",
            location: "Location : Indore",
            experience_level: " Experience : 1-3 Yr",
            brief_description:"<p><strong>Must have Skills:</strong></p><ul><li>Significant experience working with React web and mobile along with tools like Flux, Flow, Redux, etc.</li><li>In-depth knowledge of JavaScript, CSS, HTML, functional programming, and front-end languages</li><li>Strong knowledge of React fundamentals such as Virtual DOM, component lifecycle, and component state</li><li>A complete understanding of the full mobile app development lifecycle right from prototyping</li><li>Knowledge of type checking, unit testing, typescript, prop types, and code debugging</li><li>Experience working with REST APIs, document request models, offline storage, and third-party libraries</li><li>Strong understanding of web technologies like JavaScript, HTML, and CSS</li><li>Knowledge of user interface design and responsive designs</li><li>Well-versed in a variety of React Native software and technologies such as Jest,
            Enzyme, ESLint, and so on</li></ul><p><strong>Responsibilities and Duties:</strong></p><ul><li>Design and implement user interface components for JavaScript-based web and mobile applications using React ecosystem</li><li>Work as a part of a small team that includes other react native developers, designers, QA experts, and managers</li><li>Build app and UI components from prototypes and wireframes</li><li>Work with native modules as and when required</li><li>Use Native APIs for tight integrations with both platforms – Android and iOS</li><li>Write automated tests to ensure error-free code and performance</li><li>Improve front-end performance by eliminating performance bottlenecks</li><li>Create front-end modules with maximum code reusability and efficiency</li><li>Implement clean, smooth animations to provide an excellent user interface</li><li>Work with third-party dependencies and APIs</li>
            <li>Work with Redux architecture to improve performance of the websites/mobile apps</li><li>Coordinate with the cross-functional teams to build apps in stipulated time/budget.</li></ul><p><strong>Responsibilities and Duties:</strong></p><ul><li>B.Tech/B.E. in Any Specialization, BCA in Computers, B.Sc in Any Specialization</li><li>M.Tech in Any Specialization, MCA in Computers.</li></ul><p><strong>For Experienced</strong></p><ul><li>Proficiency with containers and orchestration (e.g., Docker, Kubernetes, Borg)</li><li>Experience with design, implementation, and operations of a large-scale data platform</li><li>Extensive first-hand experience as an end-user of monitoring tools, and strong opinions around what good UX/APIs/capabilities for such a tool look like</li><li>Experience working in a cross-functional product development team</li></ul>",

        }        
    ])
  end

  def down
    
  end
end
