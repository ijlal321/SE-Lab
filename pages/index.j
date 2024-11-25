import matter from 'gray-matter';
import path from 'path';
import fs from 'fs';
import Head from 'next/head';

export default function Home({ postData }) {
    const { title, date, content } = postData;

    return (
        <div>
            <h1>{title}</h1>
            <p>{date}</p>
            <div dangerouslySetInnerHTML={{ __html: content }} />
        </div>
    );
}

// Fetch data at build time
export async function getStaticProps() {
    const postsDirectory = path.join(process.cwd(), 'posts');
    const filePath = path.join(postsDirectory, 'hello-world.md');
    const fileContents = fs.readFileSync(filePath, 'utf8');
    const { data, content } = matter(fileContents);

    return {
        props: {
            postData: { ...data, content },
        },
    };
}
